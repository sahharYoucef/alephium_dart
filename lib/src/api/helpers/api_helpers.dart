num? fromJsonStringToNum(String? value) {
  return num.tryParse("$value");
}

String? toJsonNumToString(num? value) {
  return value.toString();
}

int? fromJsonStringToInt(String? value) {
  return int.tryParse("$value");
}

String? toJsonIntToString(int? value) {
  return value.toString();
}

double? fromJsonStringToDouble(String? value) {
  return double.tryParse("$value");
}

String? toJsonDoubleToString(double? value) {
  return value.toString();
}
