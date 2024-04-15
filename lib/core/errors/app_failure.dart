import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_failure.freezed.dart';

@freezed
sealed class AppFailure with _$AppFailure {
  const factory AppFailure.localizedError(String message) = _LocalizedError;

  const factory AppFailure.unexpectedError(Object e) = _UnexpectedError;
}
