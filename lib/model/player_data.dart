// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class PlayerData {
  final String playbackUrl;
  PlayerData({
    required this.playbackUrl,
  });

  PlayerData copyWith({
    String? playbackUrl,
  }) {
    return PlayerData(
      playbackUrl: playbackUrl ?? this.playbackUrl,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'playbackUrl': playbackUrl,
    };
  }

  factory PlayerData.fromMap(Map<String, dynamic> map) {
    return PlayerData(
      playbackUrl: map['playbackUrl'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory PlayerData.fromJson(String source) =>
      PlayerData.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'PlayerData(playbackUrl: $playbackUrl)';

  @override
  bool operator ==(covariant PlayerData other) {
    if (identical(this, other)) return true;

    return other.playbackUrl == playbackUrl;
  }

  @override
  int get hashCode => playbackUrl.hashCode;
}
