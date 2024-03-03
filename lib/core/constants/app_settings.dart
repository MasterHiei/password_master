import 'dart:io';
import 'dart:ui';

class AppSettings {
  const AppSettings._();

  static const Size _iosDesignSize = Size(414, 896);

  static const Size _androidDesignSize = Size(360, 780);

  static Size get designSize {
    if (Platform.isIOS) {
      return AppSettings._iosDesignSize;
    }
    if (Platform.isAndroid) {
      return AppSettings._androidDesignSize;
    }
    return AppSettings._iosDesignSize;
  }
}
