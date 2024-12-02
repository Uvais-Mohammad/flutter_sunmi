import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'flutter_sunmi_platform_interface.dart';

/// An implementation of [FlutterSunmiPlatform] that uses method channels.
class MethodChannelFlutterSunmi extends FlutterSunmiPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('flutter_sunmi');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
