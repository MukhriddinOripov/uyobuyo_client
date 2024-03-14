String uriParseConvert(String contentType) {
  String result = '';
  switch (contentType) {
    case "PHONE_NUMBER":
      {
        result = "tel:";
      }
    case "EMAIL":
      {
        result = "mailto:";
      }
    case "URL":
      {
        result = "";
      }
  }
  return result;
}
