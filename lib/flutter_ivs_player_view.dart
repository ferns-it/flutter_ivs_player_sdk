import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ivs_player_plugin/model/player_data.dart';

class FlutterIVSPlayerView extends StatefulWidget {
  const FlutterIVSPlayerView({
    Key? key,
    required this.data,
  }) : super(key: key);

  final PlayerData data;

  @override
  State<FlutterIVSPlayerView> createState() => _FlutterIVSPlayerViewState();
}

class _FlutterIVSPlayerViewState extends State<FlutterIVSPlayerView> {
  static const String viewType = 'Flutter_IVS_Player_Plugin';

  @override
  Widget build(BuildContext context) {
    return PlatformViewLink(
      viewType: viewType,
      surfaceFactory: (context, controller) {
        return AndroidViewSurface(
          controller: controller as AndroidViewController,
          gestureRecognizers: const <Factory<OneSequenceGestureRecognizer>>{},
          hitTestBehavior: PlatformViewHitTestBehavior.opaque,
        );
      },
      onCreatePlatformView: (params) {
        return PlatformViewsService.initSurfaceAndroidView(
          id: params.id,
          viewType: viewType,
          layoutDirection: TextDirection.ltr,
          creationParams: widget.data.toMap(),
          creationParamsCodec: const StandardMessageCodec(),
          onFocus: () {
            params.onFocusChanged(true);
          },
        )
          ..addOnPlatformViewCreatedListener(params.onPlatformViewCreated)
          ..create();
      },
    );
  }
}
