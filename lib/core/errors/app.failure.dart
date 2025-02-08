import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/gen/locale_keys.g.dart';

part 'app.failure.freezed.dart';

@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
sealed class AppFailure with _$AppFailure implements Exception {
  const factory AppFailure.unexpectedError(Object e) = _UnexpectedError;

  const AppFailure._();

  String localizedMessage(BuildContext context) {
    final String localeKey = switch (this) {
      _UnexpectedError() => LocaleKeys.error_app_unexpectedError,
    };
    return localeKey.tr(context: context);
  }
}
