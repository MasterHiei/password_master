import 'dart:io';
import 'dart:ui';

final class AppSettings {
  const AppSettings._();

  static Size get designSize {
    const Size iosDesignSize = Size(414, 896);
    const Size androidDesignSize = Size(360, 780);

    if (Platform.isIOS) {
      return iosDesignSize;
    }
    if (Platform.isAndroid) {
      return androidDesignSize;
    }
    return iosDesignSize;
  }

  static Duration debounceDuration = const Duration(milliseconds: 300);
}
