import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/constants/prefs_keys.dart';
import '../../../../core/providers/prefs.provider.dart';

part 'pw_generator.local.ds.g.dart';

@riverpod
PwGeneratorLocalDataSource pwGeneratorLocalDataSource(Ref ref) =>
    PwGeneratorLocalDataSourceImpl(
      ref.watch(prefsProvider),
    );

abstract class PwGeneratorLocalDataSource {
  int? getQuantity();

  Future<void> saveQuantity(int value);

  int? getLength();

  Future<void> saveLength(int value);

  List<String>? getPatterns();

  Future<void> savePatterns(List<String> value);
}

class PwGeneratorLocalDataSourceImpl implements PwGeneratorLocalDataSource {
  const PwGeneratorLocalDataSourceImpl(this.prefs);

  final SharedPreferences prefs;

  @override
  int? getQuantity() => prefs.getInt(PrefsKeys.pwQuantity);

  @override
  Future<void> saveQuantity(int value) =>
      prefs.setInt(PrefsKeys.pwQuantity, value);

  @override
  int? getLength() => prefs.getInt(PrefsKeys.pwLength);

  @override
  Future<void> saveLength(int value) => prefs.setInt(PrefsKeys.pwLength, value);

  @override
  List<String>? getPatterns() => prefs.getStringList(PrefsKeys.pwPatterns);

  @override
  Future<void> savePatterns(List<String> value) =>
      prefs.setStringList(PrefsKeys.pwPatterns, value);
}
