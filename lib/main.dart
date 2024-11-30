import 'dart:convert';
import 'dart:typed_data';

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:talker_riverpod_logger/talker_riverpod_logger.dart';

import 'core/constants/app_settings.dart';
import 'core/constants/hive_boxes.dart';
import 'core/constants/storage_keys.dart';
import 'core/enums/i18n.dart';
import 'core/providers/prefs_provider.dart';
import 'core/utils/logger.dart';
import 'features/pw_manager/data/dtos/savable_password_dto.dart';
import 'password_master_app.dart';

void main() async {
  await _ensureInitialized();

  final AdaptiveThemeMode? savedThemeMode = await AdaptiveTheme.getThemeMode();
  runApp(
    ProviderScope(
      overrides: await _generateOverrides(),
      observers: _observers,
      child: ScreenUtilInit(
        builder: (_, __) => EasyLocalization(
          supportedLocales: I18n.locales,
          path: 'assets/i18n',
          fallbackLocale: I18n.defaultLocal,
          child: PasswordMasterApp(savedThemeMode: savedThemeMode),
        ),
        designSize: AppSettings.designSize,
      ),
    ),
  );
}

Future<void> _ensureInitialized() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EasyLocalization.ensureInitialized();

  await Hive.initFlutter();
  Hive.registerAdapter(SavablePasswordDtoAdapter());
  await _openBoxes();
}

Future<void> _openBoxes() async {
  await Hive.openLazyBox<List<SavablePasswordDto>>(
    HiveBoxes.savedPasswords,
    encryptionCipher: HiveAesCipher(
      await _readEncryptionKey(StorageKeys.pwEncryptionKey),
    ),
  );
}

Future<List<Override>> _generateOverrides() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  return <Override>[
    prefsProvider.overrideWithValue(prefs),
  ];
}

List<ProviderObserver> get _observers => <ProviderObserver>[
      TalkerRiverpodObserver(
        talker: talker,
        settings: const TalkerRiverpodLoggerSettings(
          printProviderDisposed: true,
        ),
      ),
    ];

Future<Uint8List> _readEncryptionKey(String storageKey) async {
  const FlutterSecureStorage secureStorage = FlutterSecureStorage();

  String? encryptionKey = await secureStorage.read(key: storageKey);
  if (encryptionKey == null) {
    final List<int> newKey = Hive.generateSecureKey();
    await secureStorage.write(
      key: storageKey,
      value: base64UrlEncode(newKey),
    );
    encryptionKey = await secureStorage.read(key: storageKey);
  }
  return base64Url.decode(encryptionKey!);
}
