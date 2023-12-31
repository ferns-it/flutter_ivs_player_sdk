import 'package:flutter/material.dart';
import 'package:flutter_ivs_player_plugin/flutter_ivs_player_sdk.dart';
import 'package:flutter_ivs_player_plugin/flutter_ivs_player_view.dart';
import 'package:flutter_ivs_player_plugin/model/player_data.dart';

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
      "https://fcc3ddae59ed.us-west-2.playback.live-video.net/api/video/v1/us-west-2.893648527354.channel.DmumNckWFTqz.m3u8";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: FlutterIVSPlayerView(
          data: PlayerData(playbackUrl: testPlaybackUrl),
        ),
      ),
    );
  }
}
