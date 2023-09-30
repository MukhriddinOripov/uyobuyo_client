import 'package:intl/intl.dart';

class OutputFormats {
  static String moneyFormat(num price) {
    final priceFormat = NumberFormat("#,##0.00", "uz-Uz");
    var result = priceFormat.format(price / 100);
    return result;
  }

  static String moneyFormatWithOutCents(double price) {
    final priceFormat = NumberFormat("#,##0.00", "uz-Uz");
    return priceFormat.format(price);
  }

  static String formatPhoneNumber(String phoneNumber) {
    String cleanedNumber = phoneNumber.replaceAll(RegExp(r'[^\d]+'), '');
    if (cleanedNumber.length < 12) {
      return 'Invalid phone number';
    }
    // Format the phone number as "+998 90 124 22 00"
    String formattedNumber =
        '+${cleanedNumber.substring(0, 3)} ${cleanedNumber.substring(3, 5)} ${cleanedNumber.substring(5, 8)} ${cleanedNumber.substring(8, 10)} ${cleanedNumber.substring(10)}';
    return formattedNumber;
  }

  static String? formatName(String name) {
    if (name.isEmpty) {
      return name;
    }
    String formattedName = name.toLowerCase();
    formattedName = formattedName[0].toUpperCase() + formattedName.substring(1);
    return formattedName;
  }
}
