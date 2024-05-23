import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../dtos/cacheable_password_dto.dart';

part 'pw_manager_local_data_source.g.dart';

@riverpod
PwManagerLocalDataSource pwManagerLocalDataSource(
  PwManagerLocalDataSourceRef ref,
) =>
    const PwManagerLocalDataSourceImpl();

abstract class PwManagerLocalDataSource {
  Future<void> save(CacheablePassword pw);

  Future<void> delete(List<CacheablePassword> pws);
}

final class PwManagerLocalDataSourceImpl implements PwManagerLocalDataSource {
  const PwManagerLocalDataSourceImpl();

  @override
  Future<void> save(CacheablePassword pw) => pw.save();

  @override
  Future<void> delete(List<CacheablePassword> pws) async => Future.wait(
        pws.map((CacheablePassword pw) async => pw.delete),
      );
}
