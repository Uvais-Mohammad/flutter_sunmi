import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_sunmi/flutter_sunmi.dart';
import 'package:flutter_sunmi/flutter_sunmi_platform_interface.dart';
import 'package:flutter_sunmi/flutter_sunmi_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterSunmiPlatform
    with MockPlatformInterfaceMixin
    implements FlutterSunmiPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterSunmiPlatform initialPlatform = FlutterSunmiPlatform.instance;

  test('$MethodChannelFlutterSunmi is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterSunmi>());
  });

  test('getPlatformVersion', () async {
    FlutterSunmi flutterSunmiPlugin = FlutterSunmi();
    MockFlutterSunmiPlatform fakePlatform = MockFlutterSunmiPlatform();
    FlutterSunmiPlatform.instance = fakePlatform;

    expect(await flutterSunmiPlugin.getPlatformVersion(), '42');
  });
}
