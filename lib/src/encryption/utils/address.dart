import 'dart:math';
import 'dart:typed_data';

import 'package:bs58/bs58.dart';

import 'constants.dart';

class AddressUtils {
  static int addressToGroup(String address, int totalNumberOfGroups) {
    var bytes = base58.decode(address).sublist(1);
    var value = djb2(bytes) | 1;
    var hash = toPosInt(xorByte(value));
    var group = hash % totalNumberOfGroups;
    return group;
  }

  static djb2(Uint8List bytes) {
    var hash = 5381;
    for (var i = 0; i < bytes.length; i++) {
      hash = (hash << 5) + hash + (bytes[i] & 0xff);
    }
    return hash;
  }

  static int xorByte(int value) {
    var byte0 = value >> 24;
    var byte1 = value >> 16;
    var byte2 = value >> 8;

    return byte0 ^ byte1 ^ byte2 ^ value;
  }

  static int toPosInt(int byte) {
    return byte & 0xff;
  }

  static int convertAlphToSet(String amount) {
    if (double.parse(amount) < 0) {
      throw Exception('Invalid Alph amount');
    }
    var numberOfDecimals =
        amount.contains('.') ? amount.length - 1 - amount.indexOf('.') : 0;
    var numberOfZerosToAdd = numOfZerosInQuintillion - numberOfDecimals;
    var cleanedAmount =
        amount.toString().replaceFirst('.', '') + ('0' * numberOfZerosToAdd);
    return int.parse(cleanedAmount);
  }

  static String formatAmountForDisplay(double baseNum,
      [bool showFullPrecision = false, int? nbOfDecimalsToShow]) {
    if (baseNum < 0) {
      return '???';
    }
    // For abbreviation, we don't need full precision and can work with number
    var alphNum = baseNum / quintillion;
    var minNumberOfDecimals = alphNum >= 0.000005 && alphNum < 0.01 ? 3 : 2;
    var numberOfDecimalsToDisplay = nbOfDecimalsToShow ?? minNumberOfDecimals;
    if (showFullPrecision) {
      var baseNumString = baseNum.toString();
      var numNonDecimals = baseNumString.length - numOfZerosInQuintillion;
      var alphNumString = numNonDecimals > 0
          ? '${baseNumString.substring(0, numNonDecimals)}.${baseNumString.substring(numNonDecimals)}'
          : '0.${'0' * -numNonDecimals}$baseNumString';
      return removeTrailingZeros(alphNumString, numberOfDecimalsToDisplay);
    }
    if (alphNum < 0.001) {
      const tinyAmountsMaxNumberDecimals = 5;
      return removeTrailingZeros(
          alphNum.toStringAsFixed(tinyAmountsMaxNumberDecimals),
          minNumberOfDecimals);
    } else if (alphNum <= 1000000) {
      var amountWithRemovedTrailingZeros = removeTrailingZeros(
          alphNum.toStringAsFixed(numberOfDecimalsToDisplay),
          minNumberOfDecimals);
      return alphNum >= 1000
          ? addApostrophes(0) + (amountWithRemovedTrailingZeros)
          : amountWithRemovedTrailingZeros;
    }
    var tier = alphNum < 1000000000
        ? 2
        : alphNum < 1000000000000
            ? 3
            : 4;
    // get suffix and determine scale
    var suffix = moneySymbol[tier];
    var scale = pow(10, tier * 3);
    // Scale the bigNum
    // Here we need to be careful of precision issues
    var scaled = alphNum / scale;
    return scaled.toStringAsFixed(numberOfDecimalsToDisplay) + suffix;
  }

  static removeTrailingZeros(numString, minNumberOfDecimals) {
    var numberOfZeros = getNumberOfTrailingZeros(numString);
    var numStringWithoutTrailingZeros =
        numString.substring(0, numString.length - numberOfZeros);
    if (minNumberOfDecimals == null) {
      if (numStringWithoutTrailingZeros.endsWith('.')) {
        return numStringWithoutTrailingZeros.slice(0, -1);
      } else {
        return numStringWithoutTrailingZeros;
      }
    }
    if (minNumberOfDecimals < 0) {
      throw Exception('minNumberOfDecimals should be positive');
    }
    var indexOfPoint = numStringWithoutTrailingZeros.indexOf('.');
    if (indexOfPoint == -1) {
      throw Exception('numString should contain decimal point');
    }
    var numberOfDecimals =
        numStringWithoutTrailingZeros.length - 1 - indexOfPoint;
    return numberOfDecimals < minNumberOfDecimals
        ? numStringWithoutTrailingZeros +
            '0' * (minNumberOfDecimals - numberOfDecimals)
        : numStringWithoutTrailingZeros;
  }

  static getNumberOfTrailingZeros(String numString) {
    var numberOfZeros = 0;
    for (var i = numString.length - 1; i >= 0; i--) {
      if (numString[i] == '0') {
        numberOfZeros++;
      } else {
        break;
      }
    }
    return numberOfZeros;
  }

  static String addApostrophes(double numString) {
    return numString.toString().replaceAll(r"/\B(?=(\d{3})+(?!\d))/g", "'");
  }
}
