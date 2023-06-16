import 'dart:convert';
import 'dart:typed_data';
import 'package:bs58/bs58.dart';
import 'package:convert/convert.dart';
import 'package:pointycastle/export.dart';

import '../../../alephium_dart.dart';

enum AddressType {
  P2PKH(0),
  P2MPKH(1),
  P2SH(2),
  P2C(3),
  ;

  final int value;

  const AddressType(this.value);

  static AddressType fromString(String addressType) {
    switch (addressType) {
      case 'P2PKH':
        return AddressType.P2PKH;
      case 'P2MPKH':
        return AddressType.P2MPKH;
      case 'P2SH':
        return AddressType.P2SH;
      case 'P2C':
        return AddressType.P2C;
      default:
        throw Exception('Invalid address type');
    }
  }

  static AddressType fromInt(int addressType) {
    switch (addressType) {
      case 0:
        return AddressType.P2PKH;
      case 1:
        return AddressType.P2MPKH;
      case 2:
        return AddressType.P2SH;
      case 3:
        return AddressType.P2C;
      default:
        throw Exception('Invalid address type');
    }
  }

  static Uint8List toBytes(AddressType addressType) {
    switch (addressType) {
      case AddressType.P2PKH:
        return Uint8List.fromList([0]);
      case AddressType.P2MPKH:
        return Uint8List.fromList([1]);
      case AddressType.P2SH:
        return Uint8List.fromList([2]);
      case AddressType.P2C:
        return Uint8List.fromList([3]);
      default:
        throw Exception('Invalid address type');
    }
  }
}

List<Map<String, dynamic>> fetchStdTokenMetaDate(String tokenId) {
  final address = addressFromTokenId(tokenId);
  final group = groupOfAddress(address);
  final calls = List.from([0, 1, 2, 3]).map((index) => {
        "methodIndex": index,
        "group": group,
        "address": address,
      });
  return calls.toList();
}

int groupOfAddress(String address) {
  final bytes = base58.decode(address);
  final addressType = bytes[0];
  final addressBody = bytes.sublist(1);
  if (addressType == AddressType.P2PKH.value) {
    return groupOfP2pkhAddress(addressBody);
  } else if (addressType == AddressType.P2MPKH.value) {
    return groupOfP2mpkhAddress(addressBody);
  } else if (addressType == AddressType.P2SH.value) {
    return groupOfP2shAddress(addressBody);
  } else {
    final id = idFromAddress(address);
    return id[id.length - 1];
  }
}

Uint8List idFromAddress(String address) {
  final decoded = base58.decode(address);
  if (decoded.isEmpty) {
    throw Exception('Address string is empty');
  }
  final addressType = decoded[0];
  final addressBody = decoded.sublist(1);
  if (addressType == AddressType.P2C.value) {
    return addressBody;
  } else {
    throw Exception('Invalid contract address type: $addressType');
  }
}

int groupOfP2mpkhAddress(Uint8List address) {
  if ((address.length - 2) % 32 != 0) {
    throw Exception('Invalid 2mpkh address length: ${address.length}');
  }
  return groupOfAddressBytes(address.sublist(1, 33));
}

int groupOfP2pkhAddress(Uint8List address) {
  if (address.length != 32) {
    throw Exception('Invalid p2pkh address length: ${address.length}');
  }
  return groupOfAddressBytes(address);
}

int groupOfP2shAddress(address) {
  return groupOfAddressBytes(address);
}

String addressFromTokenId(String tokenId) {
  final contractId = tokenId; // contract ID is the same as token ID
  return addressFromContractId(contractId);
}

String addressFromContractId(String contractId) {
  final address = AddressType.toBytes(AddressType.P2C);
  final hash = hex.decode(contractId);
  final bytes = [...address, ...hash];
  return base58.encode(Uint8List.fromList(bytes));
}

int groupOfAddressBytes(Uint8List bytes) {
  if (bytes.length != 32) {
    throw Exception("Invalid p2pkh address length: ${bytes.length}");
  }
  final hint = djb2(bytes);
  final hash = AddressUtils.xorByte(hint);
  final group = hash % 4;
  return group;
}

int djb2(Uint8List bytes) {
  int hash = 5381;
  for (var i = 0; i < bytes.length; i++) {
    hash = (hash << 5) + hash + (bytes[i] & 0xff);
  }
  return hash;
}

String multiply(String value, int decimals) {
  String num2;
  String num1 = value;
  if (num1.contains(".")) {
    final length = num1.split(".")[1].length;
    num1 = num1.split(".")[1];
    final newDecimals = decimals - length;
    num2 = "1${"0" * newDecimals}";
  } else {
    num2 = "1${"0" * decimals}";
  }
  final len1 = num1.length;
  final len2 = num2.length;
  if (len1 == 0 || len2 == 0) {
    return "0";
  }

  final result = List.filled(len1 + len2, 0);

  int in1 = 0;
  int in2 = 0;
  int in3;

  for (var i = len1 - 1; i > -1; i--) {
    var carry = 0;

    final n1 = int.parse(num1[i]);
    in2 = 0;

    for (var j = len2 - 1; j > -1; j--) {
      final n2 = int.parse(num2[j]);
      final sum = n1 * n2 + result[in1 + in2] + carry;
      carry = (sum / 10).floor();
      result[in1 + in2] = sum % 10;

      in2 += 1;
    }

    if (carry > 0) {
      result[in1 + in2] += carry;
    }
    in1 += 1;
  }
  in3 = result.length - 1;
  while (in3 >= 0 && result[in3] == 0) {
    in3 -= 1;
  }
  if (in3 == -1) {
    return "0";
  }

  var s = "";
  while (in3 >= 0) {
    s += result[in3].toString();
    in3 -= 1;
  }

  return s;
}

Uint8List id(String text) {
  final digest = KeccakDigest(256);
  return digest.process(utf8.encode(text) as Uint8List);
}

String getColor(String? name) {
  try {
    if (name == null) return argentColorsArray.first;
    final value = id(name);
    final hash = utf8.decode(value);
    final index = int.parse(hash.substring(0, hash.length - 2), radix: 16) %
        argentColorsArray.length;
    return argentColorsArray[index];
  } catch (e) {
    return argentColorsArray.first;
  }
}

const argentColorsArray = [
  "02BBA8",
  "29C5FF",
  "0078A4",
  "FFBF3D",
  "FFA85C",
  "FF875B",
  "FF675C",
  "FF5C72",
];
