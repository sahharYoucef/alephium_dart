import 'dart:io';
import 'dart:typed_data';

import 'package:alephium_dart/alephium_dart.dart';
import 'package:bs58/bs58.dart';
import 'package:convert/convert.dart';

class Contracts {
  build(String path) async {
    var dir = Directory(path);
    final List<FileSystemEntity> entities = await dir.list().toList();
    print(entities);
  }
}

final RegExp scriptFieldRegex = RegExp(r'\{([0-9]*)\}');

String buildScriptByteCode(
    {required String bytecodeTemplate,
    required Map<String, dynamic> fields,
    required FieldsSig fieldsSig}) {
  var bytecode = bytecodeTemplate.replaceAllMapped(scriptFieldRegex, (match) {
    var fieldIndex = match.group(1);
    var fieldName = fieldsSig.names![int.parse("$fieldIndex")];

    var fieldType = fieldsSig.types![int.parse("$fieldIndex")];
    if (fields.containsKey(fieldName)) {
      var fieldValue = fields[fieldName];
      return _encodeField(
          fieldName, () => encodeScriptFieldAsString(fieldType, fieldValue));
    } else {
      throw Exception('The value of field $fieldName is not provided');
    }
  });
  return bytecode;
}

List<Uint8List> encodeContractField(String tpe, dynamic value) {
  switch (tpe) {
    case 'Bool':
      var byte = toApiBoolean(value) ? 1 : 0;
      return [
        Uint8List.fromList([byte])
      ];
    case 'I256':
      var i256 = toApiNumber256(value);
      return [encodeContractFieldI256(BigInt.parse(i256))];
    case 'U256':
      var u256 = toApiNumber256(value);
      return [encodeContractFieldU256(BigInt.parse(u256))];
    case 'ByteVec':
      var hexStr = toApiByteVec(value);
      return [
        Uint8List.fromList([...encodeByteVec(hexStr)])
      ];
    case 'Address':
      var address = toApiAddress(value);
      return [
        Uint8List.fromList([...encodeAddress(address)])
      ];

    default:
      return encodeContractFieldArray(tpe, value);
  }
}

Uint8List encodeContractFieldI256(BigInt value) {
  return Uint8List.fromList([ApiValType.i256.value, ...encodeI256(value)]);
}

Uint8List encodeContractFieldU256(BigInt value) {
  return Uint8List.fromList([ApiValType.u256.value, ...encodeU256(value)]);
}

List<Uint8List> encodeContractFieldArray(String tpe, dynamic val) {
  if (val is! List) {
    throw Exception('Expected array, got $val');
  }

  var semiColonIndex = tpe.lastIndexOf(';');
  if (semiColonIndex == -1) {
    throw Exception('Invalid Array type: $tpe');
  }

  var subType = tpe.substring(1, semiColonIndex);
  var dim = int.parse(tpe.substring(semiColonIndex + 1, tpe.length - 1));
  if (val.length != dim) {
    throw Exception('Invalid val dimension: $val');
  } else {
    return val
        .map((v) => encodeContractField(subType, v))
        .expand((element) => element)
        .toList();
  }
}

String encodeFields(
    Map<String, dynamic> fields, FieldsSig fieldsSig, bool mutable) {
  var fieldIndexes = Map.from((fieldsSig.isMutable!).asMap())
    ..removeWhere((key, element) => element != mutable);

  var fieldsEncoded = fieldIndexes.keys.expand((fieldIndex) {
    var fieldName = fieldsSig.names![fieldIndex];
    var fieldType = fieldsSig.types![fieldIndex];
    if (fieldsSig.names!.contains(fieldName)) {
      var fieldValue = fields[fieldName];
      return _encodeField(
          fieldName, () => encodeContractField(fieldType, fieldValue));
    } else {
      throw Exception('The value of field $fieldName is not provided');
    }
  }).toList();
  var fieldsLength = hex.encode(
      Uint8List.fromList(encodeI256(BigInt.from(fieldsEncoded.length))));
  return "${fieldsLength.length}${fieldsEncoded.map((f) {
    return hex.encode(Uint8List.fromList(f));
  }).join('')}";
}

String buildContractByteCode(
    {required String bytecodeTemplate,
    required Map<String, dynamic> fields,
    required FieldsSig fieldsSig}) {
  //       const encodedImmFields = encodeFields(fields, fieldsSig, false)
  // const encodedMutFields = encodeFields(fields, fieldsSig, true)
  // return bytecode + encodedImmFields + encodedMutFields

  final encodedImmFields = encodeFields(fields, fieldsSig, false);
  final encodedMutFields = encodeFields(fields, fieldsSig, true);
  return bytecodeTemplate + encodedImmFields + encodedMutFields;
}

dynamic _encodeField<T>(String fieldName, encodeFunc) {
  try {
    return encodeFunc();
  } catch (error) {
    throw Exception('Invalid $fieldName, error: $error');
  }
}

String encodeScriptFieldAsString(String tpe, dynamic value) {
  final buffer = Uint8List.fromList(encodeScriptField(tpe, value));
  return hex.encode(buffer);
}

Uint8List encodeScriptFieldI256(BigInt value) {
  return Uint8List.fromList(
      [Instruction.i256Const.value, ...encodeI256(value)]);
}

class UnSigned {
  static final BigInt oneByteBound = BigInt.from(0x40);
  static final BigInt twoByteBound = oneByteBound << 8;
  static final BigInt fourByteBound = oneByteBound << (8 * 3);
  static final BigInt u256UpperBound = BigInt.one << 256;
}

class Signed {
  static final BigInt oneByteBound = BigInt.from(0x20);
  static final BigInt twoByteBound = oneByteBound << 8;
  static final BigInt fourByteBound = oneByteBound << (8 * 3);
  static final BigInt i256UpperBound = BigInt.one << 255;
  static final BigInt i256LowerBound = -i256UpperBound;
}

class CompactInt {
  static final oneBytePrefix = 0x00;
  static final oneByteNegPrefix = 0xc0;
  static final twoBytePrefix = 0x40;
  static final twoByteNegPrefix = 0x80;
  static final fourBytePrefix = 0x80;
  static final fourByteNegPrefix = 0x40;
  static final multiBytePrefix = 0xc0;
}

Uint8List encodeI256Positive(BigInt i256) {
  if (i256 < Signed.oneByteBound) {
    return Uint8List.fromList([i256.toInt() + CompactInt.oneBytePrefix]);
  } else if (i256 < Signed.twoByteBound) {
    var num = i256.toInt();
    return Uint8List.fromList(
        [(num >> 8) + CompactInt.twoBytePrefix, num & 0xff]);
  } else if (i256 < Signed.fourByteBound) {
    var num = i256.toInt();
    return Uint8List.fromList([
      (num >> 24) + CompactInt.fourBytePrefix,
      (num >> 16) & 0xff,
      (num >> 8) & 0xff,
      num & 0xff
    ]);
  } else if (i256 < Signed.i256UpperBound) {
    return toByteArray(i256, true, false);
  } else {
    throw Exception('Too large number for i256: $i256');
  }
}

Uint8List encodeI256Negative(BigInt i256) {
  if (i256 >= -Signed.oneByteBound) {
    var num = i256.toInt();
    return Uint8List.fromList([(num ^ CompactInt.oneByteNegPrefix) & 0xff]);
  } else if (i256 >= -Signed.twoByteBound) {
    var num = i256.toInt();
    return Uint8List.fromList(
        [((num >> 8) ^ CompactInt.twoByteNegPrefix) & 0xff, num & 0xff]);
  } else if (i256 >= -Signed.fourByteBound) {
    var num = i256.toInt();
    return Uint8List.fromList([
      ((num >> 24) ^ CompactInt.fourByteNegPrefix) & 0xff,
      (num >> 16) & 0xff,
      (num >> 8) & 0xff,
      num & 0xff
    ]);
  } else if (i256 >= Signed.i256LowerBound) {
    return toByteArray(~i256, true, true);
  } else {
    throw Exception('Too small number for i256: $i256');
  }
}

Uint8List toByteArray(BigInt n, bool signed, bool notBit) {
  var hex = n.toRadixString(16);
  if (hex.length % 2 == 1) {
    hex = '0$hex';
  } else if (signed && int.parse(hex[0]) >= 8) {
    hex = '00$hex'; // add the byte for sign
  }

  var byteLength = hex.length ~/ 2;
  var bytes = Uint8List(byteLength + 1);
  for (var index = 0; index < byteLength; index++) {
    var offset = index * 2;
    var byte = int.parse(hex.substring(offset, offset + 2), radix: 16);
    bytes[index + 1] = notBit ? ~byte : byte;
  }

  var header = byteLength - 4 + CompactInt.multiBytePrefix;
  bytes[0] = header;
  return bytes;
}

Uint8List encodeI256(BigInt i256) {
  if (i256 >= BigInt.zero) {
    return encodeI256Positive(i256);
  } else {
    return encodeI256Negative(i256);
  }
}

Uint8List encodeScriptField(String tpe, dynamic value) {
  switch (tpe) {
    case 'Bool':
      var byte =
          toApiBoolean(value) ? Instruction.trueConst : Instruction.falseConst;
      return Uint8List.fromList([byte.value]);
    case 'I256':
      var i256 = toApiNumber256(value);
      return encodeScriptFieldI256(BigInt.parse(i256));
    case 'U256':
      var u256 = toApiNumber256(value);
      return encodeScriptFieldU256(BigInt.parse(u256));
    case 'ByteVec':
      var hexStr = toApiByteVec(value);
      return Uint8List.fromList(
          [Instruction.bytesConst.value, ...encodeByteVec(hexStr)]);
    case 'Address':
      var address = toApiAddress(value);
      return Uint8List.fromList(
          [Instruction.addressConst.value, ...encodeAddress(address)]);
  }
  throw Exception('invalidScriptField(tpe, value)');
}

Uint8List encodeScriptFieldU256(BigInt value) {
  return Uint8List.fromList(
      [Instruction.u256Const.value, ...encodeU256(value)]);
}

Uint8List encodeAddress(String address) {
  var addressBytes = base58.decode(address);
  return addressBytes;
}

String toApiAddress(value) {
  if (value is String) {
    return value;
  } else {
    throw Exception('Invalid address: $value');
  }
}

Uint8List encodeByteVec(String input) {
  if (!isHexString(input)) {
    throw Exception('Invalid hex-string: $input');
  }
  var bytes = hex.decode(input);
  Uint8List buffer0 = Uint8List.fromList(bytes);
  Uint8List buffer1 =
      Uint8List.fromList(encodeI256(BigInt.from(buffer0.length)));
  return Uint8List.fromList([...buffer1, ...buffer0]);
}

bool isHexString(String input) {
  return input.length % 2 == 0 && RegExp(r'^[0-9a-fA-F]*$').hasMatch(input);
}

bool isBase58(String input) {
  return RegExp(r'^[1-9A-HJ-NP-Za-km-z]*$').hasMatch(input);
}

String toApiByteVec(v) {
  if (v is! String) {
    throw Exception('Invalid value: $v, expected a hex-string');
  }
  if (isHexString(v)) {
    return v;
  } else if (isBase58(v)) {
    try {
      var address = base58.decode(v);
      if (address.length == 33 && address[0] == 3) {
        final buffer = Uint8List.fromList(address.sublist(1));
        return hex.encode(buffer);
      }
    } catch (_) {
      throw Exception('Invalid hex-string: $v');
    }
  }
  throw Exception('Invalid hex-string: $v');
}

bool toApiBoolean(v) {
  if (v is bool) {
    return v;
  } else {
    throw Exception("Invalid boolean value: $v");
  }
}

String toApiNumber256(v) {
  if ((v is int) || v is BigInt) {
    return v.toString();
  } else if (v is String) {
    try {
      if (BigInt.parse(v).toString() == v) {
        return v;
      }
    } catch (_) {
      throw Exception('Invalid value: $v, expected a 256 bit number');
    }
  }
  throw Exception('Invalid value: $v, expected a 256 bit number');
}

enum Instruction {
  trueConst(3),
  falseConst(4),
  i256Const0(5),
  i256Const1(6),
  i256Const2(7),
  i256Const3(8),
  i256Const4(9),
  i256Const5(10),
  i256ConstN1(11),
  u256Const0(12),
  u256Const1(13),
  u256Const2(14),
  u256Const3(15),
  u256Const4(16),
  u256Const5(17),
  i256Const(18),
  u256Const(19),
  bytesConst(20),
  addressConst(21);

  final int value;

  const Instruction(this.value);
}

// export function encodeU256(u256: bigint): Uint8Array {
//   if (u256 < bigIntZero) {
//     throw Error(`Negative number for U256: ${u256}`)
//   } else if (u256 < UnSigned.oneByteBound) {
//     return new Uint8Array([Number(u256) + CompactInt.oneBytePrefix])
//   } else if (u256 < UnSigned.twoByteBound) {
//     const num = Number(u256)
//     return new Uint8Array([((num >> 8) & 0xff) + CompactInt.twoBytePrefix, num & 0xff])
//   } else if (u256 < UnSigned.fourByteBound) {
//     const num = Number(u256)
//     return new Uint8Array([
//       ((num >> 24) & 0xff) + CompactInt.fourBytePrefix,
//       (num >> 16) & 0xff,
//       (num >> 8) & 0xff,
//       num & 0xff
//     ])
//   } else if (u256 < UnSigned.u256UpperBound) {
//     return toByteArray(u256, false, false)
//   } else {
//     throw Error(`Too large number for U256: ${u256}`)
//   }
// }

Uint8List encodeU256(BigInt u256) {
  if (u256 < BigInt.zero) {
    throw Exception('Negative number for U256: $u256');
  } else if (u256 < UnSigned.oneByteBound) {
    return Uint8List.fromList([u256.toInt() + CompactInt.oneBytePrefix]);
  } else if (u256 < UnSigned.twoByteBound) {
    var num = u256.toInt();
    return Uint8List.fromList(
        [((num >> 8) & 0xff) + CompactInt.twoBytePrefix, num & 0xff]);
  } else if (u256 < UnSigned.fourByteBound) {
    var num = u256.toInt();
    return Uint8List.fromList([
      ((num >> 24) & 0xff) + CompactInt.fourBytePrefix,
      (num >> 16) & 0xff,
      (num >> 8) & 0xff,
      num & 0xff
    ]);
  } else if (u256 < UnSigned.u256UpperBound) {
    return toByteArray(u256, false, false);
  } else {
    throw Exception('Too large number for U256: $u256');
  }
}

// enum ApiValType {
//   Bool = 0,
//   I256 = 1,
//   U256 = 2,
//   ByteVec = 3,
//   Address = 4
// }

enum ApiValType {
  boolean(1),
  i256(2),
  u256(3),
  byteVec(4),
  address(5);

  final int value;
  const ApiValType(this.value);
}
