import 'flutter_sunmi_platform_interface.dart';

class FlutterSunmi {
  Future<String?> getPlatformVersion() {
    return FlutterSunmiPlatform.instance.getPlatformVersion();
  }
}
