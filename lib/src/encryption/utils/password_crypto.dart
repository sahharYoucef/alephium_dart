import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';
import 'package:crypto/crypto.dart';
import 'package:encrypt/encrypt.dart';
import 'pbkdf2.dart';
import 'package:convert/convert.dart';

abstract class PasswordCrypto {
  static final ivByteLength = 64;
  static final Random _random = Random();

  static String _encrypt(String data, Uint8List salt, Uint8List derivedKey) {
    final Encrypter encrypter = Encrypter(
      AES(
        Key(derivedKey),
        mode: AESMode.gcm,
      ),
    );
    print(derivedKey.length);
    final iv = IV.fromLength(ivByteLength);
    final cipher = encrypter.encrypt(data, iv: iv);
    final payload = {
      "salt": hex.encode(salt),
      "iv": hex.encode(iv.bytes),
      "encrypted": cipher.base64,
      "version": 1
    };
    return json.encode(payload);
  }

  static String encrypt(String password, String payloadRaw) {
    var salt = List<int>.generate(64, (i) => _random.nextInt(256));
    var derivedKey =
        PBKDF2().generateKey(password, hex.encode(salt), 10000, 32);
    return _encrypt(
      payloadRaw,
      Uint8List.fromList(salt),
      Uint8List.fromList(derivedKey),
    );
  }

  static String _decrypt(
      List<int> iv, List<int> encrypted, List<int> derivedKey) {
    print(derivedKey.length);
    final Encrypter encrypter = Encrypter(
      AES(
        Key(Uint8List.fromList(derivedKey)),
        mode: AESMode.gcm,
      ),
    );
    final cipher = encrypter.decrypt(
        Encrypted(
          Uint8List.fromList(encrypted),
        ),
        iv: IV(Uint8List.fromList(iv)));
    return cipher;
  }

  static String decrypt(String password, String payloadRaw) {
    var payload = json.decode(payloadRaw);
    var version = payload["version"];
    if (version != 1) {
      throw Exception("Invalid version: got $version, expected: 1");
    }
    var salt = hex.decode(payload["salt"]);
    var iv = hex.decode(payload["iv"]);
    var encrypted = base64.decode(payload["encrypted"]);
    var derivedKey =
        PBKDF2().generateKey(password, hex.encode(salt), 10000, 32);
    return _decrypt(iv, encrypted, derivedKey);
  }

  static Uint8List keyFromPassword(String password, Uint8List salt) {
    var key = PBKDF2(hashAlgorithm: sha256)
        .generateKey(password, utf8.decode(salt), 1000, 32);
    return Uint8List.fromList(key);
  }
}
