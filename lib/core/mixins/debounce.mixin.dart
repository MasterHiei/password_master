import 'dart:async';

import '../constants/app_settings.dart';

mixin DebounceMixin {
  Timer? _timer;

  void debounce(void Function() action) {
    if (_timer?.isActive ?? false) {
      _timer?.cancel();
    }
    _timer = Timer(AppSettings.debounceDuration, action);
  }

  void cancelDebounce() {
    _timer?.cancel();
    _timer = null;
  }
}
