import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/constants/pw_settings.dart';
import '../../../../core/errors/app_failure.dart';
import '../../../../core/mixins/debounce_mixin.dart';
import '../../../../core/use_case/params/use_case_params.dart';
import '../../domain/use_cases/get_pw_length.dart';
import '../../domain/use_cases/save_pw_length.dart';

part 'pw_generator_length_provider.g.dart';

@riverpod
class PwGeneratorLength extends _$PwGeneratorLength with DebounceMixin {
  @override
  double build() {
    ref.onDispose(cancelDebounce);

    return ref
        .read(getPwLengthProvider)
        .call(const NoParams())
        .match((_) => PwSettings.defaultLength, (int value) => value)
        .map((int value) => value.toDouble())
        .run();
  }

  void save(double value) {
    final double oldValue = state;
    final double newValue = value.toInt().toDouble();
    if (oldValue == newValue) {
      return;
    }
    state = newValue;

    debounce(
      ref
          .read(savePwLengthProvider)
          .call(SavePwLengthParams(state.toInt()))
          .match(
            (AppFailure failure) => state = oldValue,
            (_) {},
          )
          .run,
    );
  }
}
