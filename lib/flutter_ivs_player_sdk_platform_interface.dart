import 'package:flutter_ivs_player_plugin/model/player_state.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutter_ivs_player_sdk_method_channel.dart';

abstract class FlutterIVSPlayerSdkPlatform extends PlatformInterface {
  /// Constructs a FlutterIvsPlayerPluginPlatform.
  FlutterIVSPlayerSdkPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterIVSPlayerSdkPlatform _instance =
      MethodChannelFlutterIVSPlayerSdk();

  /// The default instance of [FlutterIVSPlayerSdkPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterIVSPlayerSdk].
  static FlutterIVSPlayerSdkPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterIVSPlayerSdkPlatform] when
  /// they register themselves.
  static set instance(FlutterIVSPlayerSdkPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Stream<PlayerState>? get playerListener;
}
