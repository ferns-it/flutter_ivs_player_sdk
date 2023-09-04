import 'package:flutter/material.dart';
import 'package:flutter_ivs_player_plugin/flutter_ivs_player_sdk.dart';
import 'package:flutter_ivs_player_plugin/flutter_ivs_player_view.dart';
import 'package:flutter_ivs_player_plugin/model/player_data.dart';
import 'package:flutter_ivs_player_plugin/model/player_state.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _flutterIVSPlayerSdk = FlutterIVSPlayerSdk();

  static const testPlaybackUrl =
      "https://62417c80f148.ap-south-1.playback.live-video.net/api/video/v1/ap-south-1.300996695197.channel.Htp5gAKlx14Y.m3u8";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: <Widget>[
              Expanded(
                child: FlutterIVSPlayerView(
                  data: PlayerData(playbackUrl: testPlaybackUrl),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
