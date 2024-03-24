import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/constants/pw_settings.dart';
import '../../../../core/enums/pw_pattern.dart';
import '../../../../core/errors/app_failure.dart';
import '../../../../core/mixins/debounce_mixin.dart';
import '../../../../core/use_case/params/use_case_params.dart';
import '../../domain/use_cases/get_pw_patterns.dart';
import '../../domain/use_cases/save_pw_patterns.dart';

part 'pw_generator_patterns_provider.g.dart';

@riverpod
class PwGeneratorPatterns extends _$PwGeneratorPatterns with DebounceMixin {
  @override
  List<PwPattern> build() {
    ref.onDispose(cancelDebounce);

    return ref
        .read(getPwPatternsProvider)
        .call(const NoParams())
        .match(
          (_) => PwSettings.defaultPatterns,
          (List<PwPattern> value) => value,
        )
        .run();
  }

  void toggle(PwPattern pattern) {
    final List<PwPattern> oldPatterns = <PwPattern>[...state];
    final bool exists = oldPatterns.contains(pattern);
    final List<PwPattern> newPatterns = switch (exists) {
      true => oldPatterns..remove(pattern),
      false => <PwPattern>[...oldPatterns, pattern],
    };
    state = newPatterns;

    debounce(
      ref
          .read(savePwPatternsProvider)
          .call(SavePwPatternsParams(state))
          .match(
            (AppFailure failure) => state = oldPatterns,
            (_) {},
          )
          .run,
    );
  }
}
