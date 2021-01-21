import 'dart:async';

import 'package:flutter/services.dart';

class AppBackgroundUtils {
  static const MethodChannel _channel =
      const MethodChannel('app_background_utils');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  //返回系统首页
  static void navigateToSystemHome() async {
    await _channel.invokeMethod('navigateToSystemHome');
  }
}
