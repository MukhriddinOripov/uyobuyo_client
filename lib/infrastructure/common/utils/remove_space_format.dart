class RemoveSpaceFormat {
  static int removeSpaceFormatInt(String value) {
    final String result = value.replaceAll(RegExp(r"\s+"), "");
    return int.parse(result);
  }

  static String removeSpaceFormatString(String value) {
    final String result = value.replaceAll(RegExp(r"\s+"), "");
    return result;
  }
}
