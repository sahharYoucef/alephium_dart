const totalNumberOfGroups = 4;
const minUtxoSetAmount = 1000000000000;
const numOfZerosInQuintillion = 18;
const minimalGasAmount = 20000;
const billion = 1000000000;
const minimalGasPrice =
    billion * 100; // 100 nanoALPH for the first year to prevent DoS attacks
const moneySymbol = ['', 'K', 'M', 'B', 'T'];
const quintillion = 1000000000000000000;
BigInt DUST_AMOUNT = BigInt.from(10) * BigInt.from(10).pow(15);

final alphID = ''.padLeft(64, '0');
final oneALPH = 10e17;
const name = 'Alephium';
const symbol = 'ALPH';
const decimals = 18;



// export const TOTAL_NUMBER_OF_GROUPS = 4
// export const TOTAL_NUMBER_OF_CHAINS = TOTAL_NUMBER_OF_GROUPS * TOTAL_NUMBER_OF_GROUPS
// export const MIN_UTXO_SET_AMOUNT = BigInt(1000000000000)
// export const ALPH_TOKEN_ID = ''.padStart(64, '0')
// export const ONE_ALPH = 10n ** 18n
// export const DUST_AMOUNT = 10n ** 15n
// export const ZERO_ADDRESS = 'tgx7VNFoP9DJiFMFgXXtafQZkUvyEdDHT9ryamHJYrjq'
// export const DEFAULT_GAS_AMOUNT = 20000
// export const DEFAULT_GAS_PRICE = 10n ** 11n
// export const DEFAULT_GAS_ATTOALPH_AMOUNT = BigInt(DEFAULT_GAS_AMOUNT) * DEFAULT_GAS_PRICE
// export const DEFAULT_GAS_ALPH_AMOUNT = 0.002


