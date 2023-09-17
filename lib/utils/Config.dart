import 'dart:ui';

import 'package:aichat/utils/Chatgpt.dart';

class Config {
  static final Config _instance = Config._();

  factory Config() => _getInstance();

  static Config get instance => _getInstance();

  Config._() {}

  static Config _getInstance() {
    return _instance;
  }

  static bool get isDebug => !const bool.fromEnvironment('dart.vm.product');

  // static bool get isDebug => true;

  /// TODO VIP
  static bool isAdShow() {
    if (isInfiniteNumberVersion) {
      return false;
    }
    // If a custom key is set, no ads are displayed
    if (ChatGPT.getCacheOpenAIKey() != '') {
      return false;
    }
    return true;
  }

  static Color? mainColor = const Color.fromRGBO(222, 76, 61, 1.0);
  static Color? lightMainColor = const Color.fromRGBO(253, 159, 154, 1.0);
  static Color supperLightMainColor = const Color.fromRGBO(252, 223, 221, 1.0);
  static Color? darkMainColor = const Color.fromRGBO(158, 15, 6, 1.0);
  static double? headerBarFontSize = 24;
  static bool isInfiniteNumberVersion =
      true; // Unlimited frequency. Development and use
  static String appName = 'ChatAI';
  static String contactEmail = '895535702@qq.com';
  static int watchAdApiCount = 3;
  static int appUserAdCount =
      20; // Do not actively display advertisements if the number of times exceeds (redemption page)
}
