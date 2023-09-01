import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_state.freezed.dart';

@freezed
class PlayerState with _$PlayerState {
  const factory PlayerState.buffering({required String name}) =
      PlayerStateBuffering;
  const factory PlayerState.playing({required String name}) =
      PlayerStatePlaying;
  const factory PlayerState.ready({required String name}) = PlayerStateReady;
  const factory PlayerState.idle({required String name}) = PlayerStateIdle;
  const factory PlayerState.ended({required String name}) = PlayerStateEnded;
  const factory PlayerState.unknown() = PlayerStateUnknown;
}
