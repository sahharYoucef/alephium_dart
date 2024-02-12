import 'package:alephium_dart/alephium_dart.dart';

import '../../api/node/models/output_ref.dart';

abstract class SignerProvider {
  ExplorerClient get explorerClient;
  TransactionClient get nodeClient;

  Future<SignTransferTxResult> signAndSubmitTransferTx(
      SignTransferTxParams params);
  Future<SignDeployContractTxResult> signAndSubmitDeployContractTx(
      SignDeployContractTxParams params);
  Future<SignExecuteScriptTxResult> signAndSubmitExecuteScriptTx(
      SignExecuteScriptTxParams params);
  Future<SignUnsignedTxResult> signAndSubmitUnsignedTx(
      SignUnsignedTxParams params);

  Future<SignUnsignedTxResult> signUnsignedTx(SignUnsignedTxParams params);
  // The message will be prefixed with 'Alephium Signed Message: ' before signing
  // so that the resulted signature cannot be reused for building transactions.
  Future<SignMessageResult> signMessage(SignMessageParams params);
}

// export interface SignTransferTxResult {
//   fromGroup: number
//   toGroup: number
//   unsignedTx: string
//   txId: string
//   signature: string
//   gasAmount: number
//   gasPrice: Number256
// }

class SignTransferTxResult {
  final int fromGroup;
  final int toGroup;
  final String unsignedTx;
  final String txId;
  final String signature;
  final int gasAmount;
  final BigInt gasPrice;

  SignTransferTxResult({
    required this.fromGroup,
    required this.toGroup,
    required this.unsignedTx,
    required this.txId,
    required this.signature,
    required this.gasAmount,
    required this.gasPrice,
  });

  factory SignTransferTxResult.fromJson(Map<String, dynamic> json) {
    return SignTransferTxResult(
      fromGroup: json['fromGroup'],
      toGroup: json['toGroup'],
      unsignedTx: json['unsignedTx'],
      txId: json['txId'],
      signature: json['signature'],
      gasAmount: json['gasAmount'],
      gasPrice: json['gasPrice'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'fromGroup': fromGroup,
      'toGroup': toGroup,
      'unsignedTx': unsignedTx,
      'txId': txId,
      'signature': signature,
      'gasAmount': gasAmount,
      'gasPrice': gasPrice,
    };
  }
}

// export interface SignUnsignedTxParams {
//   signerAddress: string
//   signerKeyType?: KeyType
//   unsignedTx: string
// }

enum KeyType {
  defaultType('default'),
  bip340('bip340-schnorr');

  final String value;
  const KeyType(this.value);
}

class SignUnsignedTxParams {
  final String signerAddress;
  final KeyType? signerKeyType;
  final String unsignedTx;

  SignUnsignedTxParams({
    required this.signerAddress,
    this.signerKeyType,
    required this.unsignedTx,
  });

  Map<String, dynamic> toJson() {
    return {
      'signerAddress': signerAddress,
      'signerKeyType': signerKeyType?.value,
      'unsignedTx': unsignedTx,
    };
  }

  factory SignUnsignedTxParams.fromJson(Map<String, dynamic> json) {
    return SignUnsignedTxParams(
      signerAddress: json['signerAddress'],
      signerKeyType: json['signerKeyType'] != null
          ? KeyType.values.firstWhere(
              (e) => e.value == json['signerKeyType'],
              orElse: () => KeyType.defaultType,
            )
          : null,
      unsignedTx: json['unsignedTx'],
    );
  }
}

// export interface SignUnsignedTxResult {
//   fromGroup: number
//   toGroup: number
//   unsignedTx: string
//   txId: string
//   signature: string
//   gasAmount: number
//   gasPrice: Number256
// }

class SignUnsignedTxResult {
  final int fromGroup;
  final int toGroup;
  final String unsignedTx;
  final String txId;
  final String signature;
  final int gasAmount;
  final BigInt gasPrice;

  SignUnsignedTxResult({
    required this.fromGroup,
    required this.toGroup,
    required this.unsignedTx,
    required this.txId,
    required this.signature,
    required this.gasAmount,
    required this.gasPrice,
  });

  factory SignUnsignedTxResult.fromJson(Map<String, dynamic> json) {
    return SignUnsignedTxResult(
      fromGroup: json['fromGroup'],
      toGroup: json['toGroup'],
      unsignedTx: json['unsignedTx'],
      txId: json['txId'],
      signature: json['signature'],
      gasAmount: json['gasAmount'],
      gasPrice: json['gasPrice'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'fromGroup': fromGroup,
      'toGroup': toGroup,
      'unsignedTx': unsignedTx,
      'txId': txId,
      'signature': signature,
      'gasAmount': gasAmount,
      'gasPrice': gasPrice,
    };
  }
}

// export interface SignExecuteScriptTxParams {
//   signerAddress: string
//   signerKeyType?: KeyType
//   bytecode: string
//   attoAlphAmount?: Number256
//   tokens?: Token[]
//   gasAmount?: number
//   gasPrice?: Number256
// }

class SignExecuteScriptTxParams {
  final String signerAddress;
  final KeyType? signerKeyType;
  final String bytecode;
  final BigInt? attoAlphAmount;
  final List<Token>? tokens;
  final int? gasAmount;
  final BigInt? gasPrice;

  SignExecuteScriptTxParams({
    required this.signerAddress,
    this.signerKeyType,
    required this.bytecode,
    this.attoAlphAmount,
    this.tokens,
    this.gasAmount,
    this.gasPrice,
  });

  Map<String, dynamic> toJson() {
    return {
      'signerAddress': signerAddress,
      'signerKeyType': signerKeyType?.value,
      'bytecode': bytecode,
      'attoAlphAmount': attoAlphAmount,
      'tokens': tokens?.map((e) => e.toJson()).toList(),
      'gasAmount': gasAmount,
      'gasPrice': gasPrice,
    };
  }

  factory SignExecuteScriptTxParams.fromJson(Map<String, dynamic> json) {
    return SignExecuteScriptTxParams(
      signerAddress: json['signerAddress'],
      signerKeyType: json['signerKeyType'] != null
          ? KeyType.values.firstWhere(
              (e) => e.value == json['signerKeyType'],
              orElse: () => KeyType.defaultType,
            )
          : null,
      bytecode: json['bytecode'],
      attoAlphAmount: json['attoAlphAmount'],
      tokens: json['tokens'] != null
          ? List<Token>.from(json['tokens'].map((e) => Token.fromJson(e)))
          : null,
      gasAmount: json['gasAmount'],
      gasPrice: json['gasPrice'],
    );
  }
}

// export interface SignExecuteScriptTxResult {
//   groupIndex: number
//   unsignedTx: string
//   txId: string
//   signature: string
//   gasAmount: number
//   gasPrice: Number256
// }

class SignExecuteScriptTxResult {
  final int groupIndex;
  final String unsignedTx;
  final String txId;
  final String signature;
  final int gasAmount;
  final BigInt gasPrice;

  SignExecuteScriptTxResult({
    required this.groupIndex,
    required this.unsignedTx,
    required this.txId,
    required this.signature,
    required this.gasAmount,
    required this.gasPrice,
  });

  factory SignExecuteScriptTxResult.fromJson(Map<String, dynamic> json) {
    return SignExecuteScriptTxResult(
      groupIndex: json['groupIndex'],
      unsignedTx: json['unsignedTx'],
      txId: json['txId'],
      signature: json['signature'],
      gasAmount: json['gasAmount'],
      gasPrice: json['gasPrice'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'groupIndex': groupIndex,
      'unsignedTx': unsignedTx,
      'txId': txId,
      'signature': signature,
      'gasAmount': gasAmount,
      'gasPrice': gasPrice,
    };
  }
}

// export interface SignTransferTxParams {
//   signerAddress: string
//   signerKeyType?: KeyType
//   destinations: Destination[]
//   utxos?: OutputRef[]
//   gasAmount?: number
//   gasPrice?: Number256
// }

class SignTransferTxParams {
  final String signerAddress;
  final KeyType? signerKeyType;
  final List<TransactionDestination> destinations;
  final List<OutputRef>? utxos;
  final int? gasAmount;
  final BigInt? gasPrice;

  SignTransferTxParams({
    required this.signerAddress,
    this.signerKeyType,
    required this.destinations,
    this.utxos,
    this.gasAmount,
    this.gasPrice,
  });

  Map<String, dynamic> toJson() {
    return {
      'signerAddress': signerAddress,
      'signerKeyType': signerKeyType?.value,
      'destinations': destinations.map((e) => e.toJson()).toList(),
      'utxos': utxos?.map((e) => e.toJson()).toList(),
      'gasAmount': gasAmount,
      'gasPrice': gasPrice,
    };
  }

  factory SignTransferTxParams.fromJson(Map<String, dynamic> json) {
    return SignTransferTxParams(
      signerAddress: json['signerAddress'],
      signerKeyType: json['signerKeyType'] != null
          ? KeyType.values.firstWhere(
              (e) => e.value == json['signerKeyType'],
              orElse: () => KeyType.defaultType,
            )
          : null,
      destinations: List<TransactionDestination>.from(
          json['destinations'].map((e) => TransactionDestination.fromJson(e))),
      utxos: json['utxos'] != null
          ? List<OutputRef>.from(
              json['utxos'].map((e) => OutputRef.fromJson(e)))
          : null,
      gasAmount: json['gasAmount'],
      gasPrice: json['gasPrice'],
    );
  }
}

// export interface SignDeployContractTxParams {
//   signerAddress: string
//   signerKeyType?: KeyType
//   bytecode: string
//   initialAttoAlphAmount?: Number256
//   initialTokenAmounts?: Token[]
//   issueTokenAmount?: Number256
//   gasAmount?: number
//   gasPrice?: Number256
// }

class SignDeployContractTxParams {
  final String signerAddress;
  final KeyType? signerKeyType;
  final String bytecode;
  final BigInt? initialAttoAlphAmount;
  final List<Token>? initialTokenAmounts;
  final BigInt? issueTokenAmount;
  final int? gasAmount;
  final BigInt? gasPrice;

  SignDeployContractTxParams({
    required this.signerAddress,
    this.signerKeyType,
    required this.bytecode,
    this.initialAttoAlphAmount,
    this.initialTokenAmounts,
    this.issueTokenAmount,
    this.gasAmount,
    this.gasPrice,
  });

  Map<String, dynamic> toJson() {
    return {
      'signerAddress': signerAddress,
      'signerKeyType': signerKeyType?.value,
      'bytecode': bytecode,
      'initialAttoAlphAmount': initialAttoAlphAmount,
      'initialTokenAmounts':
          initialTokenAmounts?.map((e) => e.toJson()).toList(),
      'issueTokenAmount': issueTokenAmount,
      'gasAmount': gasAmount,
      'gasPrice': gasPrice,
    };
  }

  factory SignDeployContractTxParams.fromJson(Map<String, dynamic> json) {
    return SignDeployContractTxParams(
      signerAddress: json['signerAddress'],
      signerKeyType: json['signerKeyType'] != null
          ? KeyType.values.firstWhere(
              (e) => e.value == json['signerKeyType'],
              orElse: () => KeyType.defaultType,
            )
          : null,
      bytecode: json['bytecode'],
      initialAttoAlphAmount: json['initialAttoAlphAmount'],
      initialTokenAmounts: json['initialTokenAmounts'] != null
          ? List<Token>.from(
              json['initialTokenAmounts'].map((e) => Token.fromJson(e)))
          : null,
      issueTokenAmount: json['issueTokenAmount'],
      gasAmount: json['gasAmount'],
      gasPrice: json['gasPrice'],
    );
  }
}

// export interface SignDeployContractTxResult {
//   groupIndex: number
//   unsignedTx: string
//   txId: string
//   signature: string
//   contractId: string
//   contractAddress: string
//   gasAmount: number
//   gasPrice: Number256
// }

class SignDeployContractTxResult {
  final int groupIndex;
  final String unsignedTx;
  final String txId;
  final String signature;
  final String contractId;
  final String contractAddress;
  final int gasAmount;
  final BigInt gasPrice;

  SignDeployContractTxResult({
    required this.groupIndex,
    required this.unsignedTx,
    required this.txId,
    required this.signature,
    required this.contractId,
    required this.contractAddress,
    required this.gasAmount,
    required this.gasPrice,
  });

  factory SignDeployContractTxResult.fromJson(Map<String, dynamic> json) {
    return SignDeployContractTxResult(
      groupIndex: json['groupIndex'],
      unsignedTx: json['unsignedTx'],
      txId: json['txId'],
      signature: json['signature'],
      contractId: json['contractId'],
      contractAddress: json['contractAddress'],
      gasAmount: json['gasAmount'],
      gasPrice: json['gasPrice'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'groupIndex': groupIndex,
      'unsignedTx': unsignedTx,
      'txId': txId,
      'signature': signature,
      'contractId': contractId,
      'contractAddress': contractAddress,
      'gasAmount': gasAmount,
      'gasPrice': gasPrice,
    };
  }
}

// export type MessageHasher =
//   | 'alephium' // Message is prefixed with 'Alephium signed message: ' before hashed with blake2b
//   | 'sha256'
//   | 'blake2b'
//   | 'identity' // No hash is used, the message to be 32 bytes

// export interface SignMessageParams {
//   signerAddress: string
//   signerKeyType?: KeyType
//   message: string
//   messageHasher: MessageHasher
// }

class SignMessageParams {
  final String signerAddress;
  final KeyType? signerKeyType;
  final String message;
  final MessageHasher messageHasher;

  SignMessageParams({
    required this.signerAddress,
    this.signerKeyType,
    required this.message,
    required this.messageHasher,
  });

  Map<String, dynamic> toJson() {
    return {
      'signerAddress': signerAddress,
      'signerKeyType': signerKeyType?.value,
      'message': message,
      'messageHasher': messageHasher.value,
    };
  }

  factory SignMessageParams.fromJson(Map<String, dynamic> json) {
    return SignMessageParams(
      signerAddress: json['signerAddress'],
      signerKeyType: json['signerKeyType'] != null
          ? KeyType.values.firstWhere(
              (e) => e.value == json['signerKeyType'],
              orElse: () => KeyType.defaultType,
            )
          : null,
      message: json['message'],
      messageHasher: MessageHasher.values.firstWhere(
        (e) => e.value == json['messageHasher'],
        orElse: () => MessageHasher.alephium,
      ),
    );
  }
}

enum MessageHasher {
  alephium('alephium'),
  sha256('sha256'),
  blake2b('blake2b'),
  identity('identity');

  final String value;
  const MessageHasher(this.value);
}

// export interface SignMessageResult {
//   signature: string
// }

class SignMessageResult {
  final String signature;

  SignMessageResult({
    required this.signature,
  });

  factory SignMessageResult.fromJson(Map<String, dynamic> json) {
    return SignMessageResult(
      signature: json['signature'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'signature': signature,
    };
  }
}
