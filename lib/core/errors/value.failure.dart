import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/gen/locale_keys.g.dart';

part 'value.failure.freezed.dart';

@Freezed(map: FreezedMapOptions.none, when: FreezedWhenOptions.none)
sealed class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidPassword({T? value}) = _InvalidPassword<T>;

  const ValueFailure._();

  String localizedMessage(BuildContext context) {
    final String localeKey = switch (this) {
      _InvalidPassword<T>() => LocaleKeys.error_value_invalidPassword,
    };
    return localeKey.tr(context: context);
  }
}
