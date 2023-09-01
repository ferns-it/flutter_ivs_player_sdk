import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ivs_player_plugin/model/player_state.dart';

import 'flutter_ivs_player_sdk_platform_interface.dart';

/// An implementation of [FlutterIVSPlayerSdkPlatform] that uses method channels.
class MethodChannelFlutterIVSPlayerSdk implements FlutterIVSPlayerSdkPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel =
      const MethodChannel('co.uk.ferns/flutter_ivs_player_plugin');

  /// The event channel used to interact with the native platform.
  @visibleForTesting
  final eventChannel =
      const EventChannel('co.uk.ferns/flutter_ivs_player_event_channel');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Stream<PlayerState>? get playerListener {
    return eventChannel
        .receiveBroadcastStream()
        .cast<String>()
        .map(_parsePlayerStateEvents);
  }

  PlayerState _parsePlayerStateEvents(String event) {
    switch (event) {
      case "BUFFERING":
        return PlayerStateBuffering(name: event);
      case "READY":
        return PlayerStateReady(name: event);
      case "PLAYING":
        return PlayerStatePlaying(name: event);
      case "IDLE":
        return PlayerStateIdle(name: event);
      case "ENDED":
        return PlayerStateEnded(name: event);
      default:
        return const PlayerStateUnknown();
    }
  }
}
