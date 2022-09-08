abstract class AlephiumFormate {
  static String numberFormat(num? value) {
    if (value == null) {
      return "???";
    }
    var result = value / 10e17;
    return result.toStringAsFixed(17).toString();
  }

  static String stringFormat(String? value) {
    if (value == null) {
      return "???";
    }
    var parse = double.parse(value);
    var result = parse / 10e17;
    return result.toStringAsFixed(3).toString();
  }
}
