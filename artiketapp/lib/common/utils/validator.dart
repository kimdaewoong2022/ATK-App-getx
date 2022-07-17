bool utilIsEmail(String? input) {
  if (input == null || input.isEmpty) return false;
  String regexEmail = "^\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*\$";
  return RegExp(regexEmail).hasMatch(input);
}

bool utilCheckStringLength(String? input, int length) {
  if (input == null || input.isEmpty) return false;
  return input.length >= length;
}
