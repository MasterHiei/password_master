import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:hive/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../features/pw_manager/data/dtos/cacheable_password_dto.dart';
import '../constants/hive_boxes.dart';
import '../constants/storage_keys.dart';

part 'cached_passwords_box_provider.g.dart';

const String _storageKey = StorageKeys.pwEncryptionKey;

@riverpod
Future<LazyBox<List<CacheablePassword>>> cachedPasswordsBox(
  CachedPasswordsBoxRef ref,
) async {
  final Uint8List key = await _readEncryptionKey();
  final LazyBox<List<CacheablePassword>> box = await Hive.openLazyBox(
    HiveBoxes.cachedPasswords,
    encryptionCipher: HiveAesCipher(key),
  );
  ref.onDispose(() async {
    await box.compact();
    await box.close();
  });
  return box;
}

Future<Uint8List> _readEncryptionKey() async {
  const FlutterSecureStorage secureStorage = FlutterSecureStorage();
  String? key = await secureStorage.read(key: _storageKey);
  if (key == null) {
    final List<int> newKey = Hive.generateSecureKey();
    await secureStorage.write(
      key: _storageKey,
      value: base64UrlEncode(newKey),
    );
    key = await secureStorage.read(key: _storageKey);
  }
  return base64Url.decode(key!);
}
