import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../dtos/cacheable_password_dto.dart';

part 'pw_manager_local_data_source.g.dart';

@riverpod
PwManagerLocalDataSource pwManagerLocalDataSource(
  PwManagerLocalDataSourceRef ref,
) =>
    const PwManagerLocalDataSourceImpl();

abstract class PwManagerLocalDataSource {
  Future<void> save(CacheablePassword value);

  Future<void> delete(CacheablePassword value);
}

final class PwManagerLocalDataSourceImpl implements PwManagerLocalDataSource {
  const PwManagerLocalDataSourceImpl();

  @override
  Future<void> save(CacheablePassword data) => data.save();

  @override
  Future<void> delete(CacheablePassword data) => data.delete();
}
