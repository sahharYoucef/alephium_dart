import 'dart:typed_data';
import 'package:convert/convert.dart';

import '../../../alephium_dart.dart';

enum AddressType {
  P2PKH,
  P2MPKH,
  P2SH,
  P2C,
  ;

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
  final group = groupOfAddressBytes(address);
  final calls = List.from([0, 1, 2, 3]).map((index) => {
        "methodIndex": index,
        "group": group,
        "address": address,
      });
  return calls.toList();
}

Uint8List addressFromTokenId(String tokenId) {
  final contractId = tokenId; // contract ID is the same as token ID
  return addressFromContractId(contractId);
}

Uint8List addressFromContractId(String contractId) {
  final address = AddressType.toBytes(AddressType.P2C);
  final hash = hex.decode(contractId);
  final bytes = address..addAll(hash);
  return bytes;
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
