import 'package:flutter_ivs_player_plugin/model/player_state.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ivs_player_plugin/flutter_ivs_player_sdk.dart';
import 'package:flutter_ivs_player_plugin/flutter_ivs_player_sdk_platform_interface.dart';
import 'package:flutter_ivs_player_plugin/flutter_ivs_player_sdk_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterIvsPlayerPluginPlatform
    with MockPlatformInterfaceMixin
    implements FlutterIVSPlayerSdkPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');

  @override
  Stream<PlayerState>? playerListener;
}

void main() {
  final FlutterIVSPlayerSdkPlatform initialPlatform =
      FlutterIVSPlayerSdkPlatform.instance;

  test('$MethodChannelFlutterIVSPlayerSdk is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterIVSPlayerSdk>());
  });

  test('getPlatformVersion', () async {
    FlutterIVSPlayerSdk flutterIvsPlayerPlugin = FlutterIVSPlayerSdk();
    MockFlutterIvsPlayerPluginPlatform fakePlatform =
        MockFlutterIvsPlayerPluginPlatform();
    FlutterIVSPlayerSdkPlatform.instance = fakePlatform;

    expect(await flutterIvsPlayerPlugin.getPlatformVersion(), '42');
  });
}
