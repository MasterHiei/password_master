import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/constants/pw_settings.dart';
import '../../../../core/errors/app.failure.dart';
import '../../../../core/mixins/debounce.mixin.dart';
import '../../../../core/use_case/params/use_case.params.dart';
import '../../domain/use_cases/get_pw_quantity.uc.dart';
import '../../domain/use_cases/save_pw_quantity.uc.dart';

part 'pw_generator_quantity.provider.g.dart';

@riverpod
class PwGeneratorQuantity extends _$PwGeneratorQuantity with DebounceMixin {
  @override
  double build() {
    ref.onDispose(cancelDebounce);

    return ref
        .read(getPwQuantityProvider)
        .call(const NoParams())
        .match((_) => PwSettings.defaultQuantity, (int value) => value)
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
          .read(savePwQuantityProvider)
          .call(SavePwQuantityParams(state.toInt()))
          .match(
            (AppFailure failure) => state = oldValue,
            (_) {},
          )
          .run,
    );
  }
}
