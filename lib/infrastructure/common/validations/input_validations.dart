import 'package:dartz/dartz.dart';
import 'package:uyobuyo_client/infrastructure/common/failures/input_failures.dart';

class InputValidations {
  static Either<InputFailures, String> phoneNumberV(String input) {
    const String phoneNumberRegex = r'^[0-9]{2}[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{2}[-\s\.]?[0-9]{2}';
    if (input.isEmpty) {
      return left(InputFailures.empty(input));
    } else if (input.length < 12) {
      return left(InputFailures.invalidPhone(input));
    } else if (RegExp(phoneNumberRegex).hasMatch(input)) {
      return right(input);
    } else {
      return left(InputFailures.invalidPhone(input));
    }
  }

  static Either<InputFailures, String> dateV(String input) {
    late int year;
    late int month;
    late int day;
    if (input.length < 10) {
      year = 1000;
      month = 99;
      day = 99;
    } else {
      year = int.parse(input.substring(0, 4));
      month = int.parse(input.substring(5, 7));
      day = int.parse(input.substring(8, 10));
    }

    int nowYear = DateTime.now().year;
    print("line $year year");
    print("line $month month");
    print("line $day day");
    print("line ${input.length} day");
    if (input.isEmpty) {
      return left(InputFailures.empty(input));
    } else if (input.length < 10 || year < 1900 || month > 12 || day > 31 || year > nowYear) {
      print("line false");
      return left(InputFailures.invalidPhone(input));
    } else if (input.length == 10 && year > 1900 && month < 12 && day <= 31 && year <= nowYear) {
      print("line true");
      return right(input);
    } else {
      print("line or");
      return left(InputFailures.invalidPhone(input));
    }
  }

  static Either<InputFailures, String> defaultV(String input) {
    if (input.isEmpty) {
      return left(InputFailures.empty(input));
    } else {
      return right(input);
    }
  }
}
