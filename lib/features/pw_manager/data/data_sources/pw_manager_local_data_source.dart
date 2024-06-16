import 'package:hive/hive.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/constants/hive_boxes.dart';
import '../../../../core/providers/saved_passwords_box_provider.dart';
import '../dtos/savable_password_dto.dart';

part 'pw_manager_local_data_source.g.dart';

@riverpod
PwManagerLocalDataSource pwManagerLocalDataSource(
  PwManagerLocalDataSourceRef ref,
) =>
    PwManagerLocalDataSourceImpl(
      ref.watch(savedPasswordsBoxProvider),
    );

abstract class PwManagerLocalDataSource {
  Future<List<SavablePasswordDto>?> getAll();

  Future<void> save(SavablePasswordDto pw);

  Future<void> delete(Iterable<SavablePasswordDto> pws);
}

final class PwManagerLocalDataSourceImpl implements PwManagerLocalDataSource {
  const PwManagerLocalDataSourceImpl(this.box);

  final LazyBox<List<SavablePasswordDto>> box;

  @override
  Future<List<SavablePasswordDto>?> getAll() =>
      box.get(HiveBoxes.savedPasswords);

  @override
  Future<void> save(SavablePasswordDto pw) => pw.save();

  @override
  Future<void> delete(Iterable<SavablePasswordDto> pws) async => Future.wait(
        pws.map((SavablePasswordDto pw) async => pw.delete),
      );
}
