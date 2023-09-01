// You have generated a new plugin project without specifying the `--platforms`
// flag. A plugin project with no platform support was generated. To add a
// platform, run `flutter create -t plugin --platforms <platforms> .` under the
// same directory. You can also find a detailed instruction on how to add
// platforms in the `pubspec.yaml` at
// https://flutter.dev/docs/development/packages-and-plugins/developing-packages#plugin-platforms.

import 'package:flutter_ivs_player_plugin/model/player_state.dart';

import 'flutter_ivs_player_sdk_platform_interface.dart';

class FlutterIVSPlayerSdk {
  Future<String?> getPlatformVersion() {
    return FlutterIVSPlayerSdkPlatform.instance.getPlatformVersion();
  }

  Stream<PlayerState>? get playerListener =>
      FlutterIVSPlayerSdkPlatform.instance.playerListener;
}
