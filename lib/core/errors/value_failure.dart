import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failure.freezed.dart';

@freezed
sealed class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidPassword({T? value}) = _InvalidPassword<T>;
}
