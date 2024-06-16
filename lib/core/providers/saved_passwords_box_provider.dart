import 'package:hive/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../features/pw_manager/data/dtos/savable_password_dto.dart';
import '../constants/hive_boxes.dart';

part 'saved_passwords_box_provider.g.dart';

@riverpod
LazyBox<List<SavablePasswordDto>> savedPasswordsBox(
  SavedPasswordsBoxRef ref,
) =>
    Hive.lazyBox(HiveBoxes.savedPasswords);
