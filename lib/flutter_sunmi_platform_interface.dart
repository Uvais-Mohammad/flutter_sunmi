import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_sunmi_method_channel.dart';

abstract class FlutterSunmiPlatform extends PlatformInterface {
  /// Constructs a FlutterSunmiPlatform.
  FlutterSunmiPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterSunmiPlatform _instance = MethodChannelFlutterSunmi();

  /// The default instance of [FlutterSunmiPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterSunmi].
  static FlutterSunmiPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterSunmiPlatform] when
  /// they register themselves.
  static set instance(FlutterSunmiPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

}
