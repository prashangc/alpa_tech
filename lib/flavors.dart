import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

enum Flavor {
  dev,
  uat,
  qa,
  live,
}

class FlavorSettings {
  static Flavor? flavor;
  static String get name => flavor?.name ?? '';

  static EnvConfig get getBaseUrl {
    switch (flavor) {
      case Flavor.dev:
        return EnvConfig.dev;
      case Flavor.uat:
        return EnvConfig.live;
      case Flavor.qa:
        return EnvConfig.qa;
      case Flavor.live:
        return EnvConfig.uat;
      default:
        throw Exception("Unknown flavor for apiBaseUrl");
    }
  }
}

class EnvConfig {
  final String baseUrl;
  final String androidVersion;
  final String iosVersion;

  const EnvConfig({
    required this.androidVersion,
    required this.baseUrl,
    required this.iosVersion,
  });

  static Future<void> initializeAppFlavor(
      {required BuildContext context}) async {
    final String? flavor =
        await const MethodChannel('flavor').invokeMethod<String>('getFlavor');
    print('STARTED WITH FLAVOR $flavor');

    switch (flavor) {
      case 'dev':
        FlavorSettings.getBaseUrl;
        break;
    }
    (context as Element).markNeedsBuild();
  }

  static const EnvConfig dev = EnvConfig(
    baseUrl: 'https://dev.alpalika.com/api',
    androidVersion: "1.0.0",
    iosVersion: "12312xwa43qwa3",
  );

  static const EnvConfig live = EnvConfig(
    baseUrl: 'https://dev.alpalika.com/api',
    androidVersion: "1.0.0",
    iosVersion: "12312xwa43qwa3",
  );

  static const EnvConfig qa = EnvConfig(
    baseUrl: 'https://dev.alpalika.com/api',
    androidVersion: "1.0.0",
    iosVersion: "12312xwa43qwa3",
  );

  static const EnvConfig uat = EnvConfig(
    baseUrl: 'https://dev.alpalika.com/api',
    androidVersion: "1.0.0",
    iosVersion: "12312xwa43qwa3",
  );
}
