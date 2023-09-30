import 'package:freezed_annotation/freezed_annotation.dart';

part 'input_failures.freezed.dart';

@Freezed(
    copyWith: false,
    toJson: false,
    toStringOverride: false,
    fromJson: false,
    when: FreezedWhenOptions.none,
    map: FreezedMapOptions(map: false, mapOrNull: false))
class InputFailures with _$InputFailures {
  const InputFailures._();

  const factory InputFailures.empty(String input) = _Empty;

  const factory InputFailures.invalidPhone(String input) = _InvalidPhone;
}
