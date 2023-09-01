// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'player_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PlayerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) buffering,
    required TResult Function(String name) playing,
    required TResult Function(String name) ready,
    required TResult Function(String name) idle,
    required TResult Function(String name) ended,
    required TResult Function() unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? buffering,
    TResult? Function(String name)? playing,
    TResult? Function(String name)? ready,
    TResult? Function(String name)? idle,
    TResult? Function(String name)? ended,
    TResult? Function()? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? buffering,
    TResult Function(String name)? playing,
    TResult Function(String name)? ready,
    TResult Function(String name)? idle,
    TResult Function(String name)? ended,
    TResult Function()? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayerStateBuffering value) buffering,
    required TResult Function(PlayerStatePlaying value) playing,
    required TResult Function(PlayerStateReady value) ready,
    required TResult Function(PlayerStateIdle value) idle,
    required TResult Function(PlayerStateEnded value) ended,
    required TResult Function(PlayerStateUnknown value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlayerStateBuffering value)? buffering,
    TResult? Function(PlayerStatePlaying value)? playing,
    TResult? Function(PlayerStateReady value)? ready,
    TResult? Function(PlayerStateIdle value)? idle,
    TResult? Function(PlayerStateEnded value)? ended,
    TResult? Function(PlayerStateUnknown value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayerStateBuffering value)? buffering,
    TResult Function(PlayerStatePlaying value)? playing,
    TResult Function(PlayerStateReady value)? ready,
    TResult Function(PlayerStateIdle value)? idle,
    TResult Function(PlayerStateEnded value)? ended,
    TResult Function(PlayerStateUnknown value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerStateCopyWith<$Res> {
  factory $PlayerStateCopyWith(
          PlayerState value, $Res Function(PlayerState) then) =
      _$PlayerStateCopyWithImpl<$Res, PlayerState>;
}

/// @nodoc
class _$PlayerStateCopyWithImpl<$Res, $Val extends PlayerState>
    implements $PlayerStateCopyWith<$Res> {
  _$PlayerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PlayerStateBufferingCopyWith<$Res> {
  factory _$$PlayerStateBufferingCopyWith(_$PlayerStateBuffering value,
          $Res Function(_$PlayerStateBuffering) then) =
      __$$PlayerStateBufferingCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$PlayerStateBufferingCopyWithImpl<$Res>
    extends _$PlayerStateCopyWithImpl<$Res, _$PlayerStateBuffering>
    implements _$$PlayerStateBufferingCopyWith<$Res> {
  __$$PlayerStateBufferingCopyWithImpl(_$PlayerStateBuffering _value,
      $Res Function(_$PlayerStateBuffering) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$PlayerStateBuffering(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PlayerStateBuffering implements PlayerStateBuffering {
  const _$PlayerStateBuffering({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'PlayerState.buffering(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerStateBuffering &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerStateBufferingCopyWith<_$PlayerStateBuffering> get copyWith =>
      __$$PlayerStateBufferingCopyWithImpl<_$PlayerStateBuffering>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) buffering,
    required TResult Function(String name) playing,
    required TResult Function(String name) ready,
    required TResult Function(String name) idle,
    required TResult Function(String name) ended,
    required TResult Function() unknown,
  }) {
    return buffering(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? buffering,
    TResult? Function(String name)? playing,
    TResult? Function(String name)? ready,
    TResult? Function(String name)? idle,
    TResult? Function(String name)? ended,
    TResult? Function()? unknown,
  }) {
    return buffering?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? buffering,
    TResult Function(String name)? playing,
    TResult Function(String name)? ready,
    TResult Function(String name)? idle,
    TResult Function(String name)? ended,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (buffering != null) {
      return buffering(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayerStateBuffering value) buffering,
    required TResult Function(PlayerStatePlaying value) playing,
    required TResult Function(PlayerStateReady value) ready,
    required TResult Function(PlayerStateIdle value) idle,
    required TResult Function(PlayerStateEnded value) ended,
    required TResult Function(PlayerStateUnknown value) unknown,
  }) {
    return buffering(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlayerStateBuffering value)? buffering,
    TResult? Function(PlayerStatePlaying value)? playing,
    TResult? Function(PlayerStateReady value)? ready,
    TResult? Function(PlayerStateIdle value)? idle,
    TResult? Function(PlayerStateEnded value)? ended,
    TResult? Function(PlayerStateUnknown value)? unknown,
  }) {
    return buffering?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayerStateBuffering value)? buffering,
    TResult Function(PlayerStatePlaying value)? playing,
    TResult Function(PlayerStateReady value)? ready,
    TResult Function(PlayerStateIdle value)? idle,
    TResult Function(PlayerStateEnded value)? ended,
    TResult Function(PlayerStateUnknown value)? unknown,
    required TResult orElse(),
  }) {
    if (buffering != null) {
      return buffering(this);
    }
    return orElse();
  }
}

abstract class PlayerStateBuffering implements PlayerState {
  const factory PlayerStateBuffering({required final String name}) =
      _$PlayerStateBuffering;

  String get name;
  @JsonKey(ignore: true)
  _$$PlayerStateBufferingCopyWith<_$PlayerStateBuffering> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlayerStatePlayingCopyWith<$Res> {
  factory _$$PlayerStatePlayingCopyWith(_$PlayerStatePlaying value,
          $Res Function(_$PlayerStatePlaying) then) =
      __$$PlayerStatePlayingCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$PlayerStatePlayingCopyWithImpl<$Res>
    extends _$PlayerStateCopyWithImpl<$Res, _$PlayerStatePlaying>
    implements _$$PlayerStatePlayingCopyWith<$Res> {
  __$$PlayerStatePlayingCopyWithImpl(
      _$PlayerStatePlaying _value, $Res Function(_$PlayerStatePlaying) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$PlayerStatePlaying(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PlayerStatePlaying implements PlayerStatePlaying {
  const _$PlayerStatePlaying({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'PlayerState.playing(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerStatePlaying &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerStatePlayingCopyWith<_$PlayerStatePlaying> get copyWith =>
      __$$PlayerStatePlayingCopyWithImpl<_$PlayerStatePlaying>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) buffering,
    required TResult Function(String name) playing,
    required TResult Function(String name) ready,
    required TResult Function(String name) idle,
    required TResult Function(String name) ended,
    required TResult Function() unknown,
  }) {
    return playing(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? buffering,
    TResult? Function(String name)? playing,
    TResult? Function(String name)? ready,
    TResult? Function(String name)? idle,
    TResult? Function(String name)? ended,
    TResult? Function()? unknown,
  }) {
    return playing?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? buffering,
    TResult Function(String name)? playing,
    TResult Function(String name)? ready,
    TResult Function(String name)? idle,
    TResult Function(String name)? ended,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (playing != null) {
      return playing(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayerStateBuffering value) buffering,
    required TResult Function(PlayerStatePlaying value) playing,
    required TResult Function(PlayerStateReady value) ready,
    required TResult Function(PlayerStateIdle value) idle,
    required TResult Function(PlayerStateEnded value) ended,
    required TResult Function(PlayerStateUnknown value) unknown,
  }) {
    return playing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlayerStateBuffering value)? buffering,
    TResult? Function(PlayerStatePlaying value)? playing,
    TResult? Function(PlayerStateReady value)? ready,
    TResult? Function(PlayerStateIdle value)? idle,
    TResult? Function(PlayerStateEnded value)? ended,
    TResult? Function(PlayerStateUnknown value)? unknown,
  }) {
    return playing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayerStateBuffering value)? buffering,
    TResult Function(PlayerStatePlaying value)? playing,
    TResult Function(PlayerStateReady value)? ready,
    TResult Function(PlayerStateIdle value)? idle,
    TResult Function(PlayerStateEnded value)? ended,
    TResult Function(PlayerStateUnknown value)? unknown,
    required TResult orElse(),
  }) {
    if (playing != null) {
      return playing(this);
    }
    return orElse();
  }
}

abstract class PlayerStatePlaying implements PlayerState {
  const factory PlayerStatePlaying({required final String name}) =
      _$PlayerStatePlaying;

  String get name;
  @JsonKey(ignore: true)
  _$$PlayerStatePlayingCopyWith<_$PlayerStatePlaying> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlayerStateReadyCopyWith<$Res> {
  factory _$$PlayerStateReadyCopyWith(
          _$PlayerStateReady value, $Res Function(_$PlayerStateReady) then) =
      __$$PlayerStateReadyCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$PlayerStateReadyCopyWithImpl<$Res>
    extends _$PlayerStateCopyWithImpl<$Res, _$PlayerStateReady>
    implements _$$PlayerStateReadyCopyWith<$Res> {
  __$$PlayerStateReadyCopyWithImpl(
      _$PlayerStateReady _value, $Res Function(_$PlayerStateReady) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$PlayerStateReady(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PlayerStateReady implements PlayerStateReady {
  const _$PlayerStateReady({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'PlayerState.ready(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerStateReady &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerStateReadyCopyWith<_$PlayerStateReady> get copyWith =>
      __$$PlayerStateReadyCopyWithImpl<_$PlayerStateReady>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) buffering,
    required TResult Function(String name) playing,
    required TResult Function(String name) ready,
    required TResult Function(String name) idle,
    required TResult Function(String name) ended,
    required TResult Function() unknown,
  }) {
    return ready(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? buffering,
    TResult? Function(String name)? playing,
    TResult? Function(String name)? ready,
    TResult? Function(String name)? idle,
    TResult? Function(String name)? ended,
    TResult? Function()? unknown,
  }) {
    return ready?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? buffering,
    TResult Function(String name)? playing,
    TResult Function(String name)? ready,
    TResult Function(String name)? idle,
    TResult Function(String name)? ended,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayerStateBuffering value) buffering,
    required TResult Function(PlayerStatePlaying value) playing,
    required TResult Function(PlayerStateReady value) ready,
    required TResult Function(PlayerStateIdle value) idle,
    required TResult Function(PlayerStateEnded value) ended,
    required TResult Function(PlayerStateUnknown value) unknown,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlayerStateBuffering value)? buffering,
    TResult? Function(PlayerStatePlaying value)? playing,
    TResult? Function(PlayerStateReady value)? ready,
    TResult? Function(PlayerStateIdle value)? idle,
    TResult? Function(PlayerStateEnded value)? ended,
    TResult? Function(PlayerStateUnknown value)? unknown,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayerStateBuffering value)? buffering,
    TResult Function(PlayerStatePlaying value)? playing,
    TResult Function(PlayerStateReady value)? ready,
    TResult Function(PlayerStateIdle value)? idle,
    TResult Function(PlayerStateEnded value)? ended,
    TResult Function(PlayerStateUnknown value)? unknown,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class PlayerStateReady implements PlayerState {
  const factory PlayerStateReady({required final String name}) =
      _$PlayerStateReady;

  String get name;
  @JsonKey(ignore: true)
  _$$PlayerStateReadyCopyWith<_$PlayerStateReady> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlayerStateIdleCopyWith<$Res> {
  factory _$$PlayerStateIdleCopyWith(
          _$PlayerStateIdle value, $Res Function(_$PlayerStateIdle) then) =
      __$$PlayerStateIdleCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$PlayerStateIdleCopyWithImpl<$Res>
    extends _$PlayerStateCopyWithImpl<$Res, _$PlayerStateIdle>
    implements _$$PlayerStateIdleCopyWith<$Res> {
  __$$PlayerStateIdleCopyWithImpl(
      _$PlayerStateIdle _value, $Res Function(_$PlayerStateIdle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$PlayerStateIdle(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PlayerStateIdle implements PlayerStateIdle {
  const _$PlayerStateIdle({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'PlayerState.idle(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerStateIdle &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerStateIdleCopyWith<_$PlayerStateIdle> get copyWith =>
      __$$PlayerStateIdleCopyWithImpl<_$PlayerStateIdle>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) buffering,
    required TResult Function(String name) playing,
    required TResult Function(String name) ready,
    required TResult Function(String name) idle,
    required TResult Function(String name) ended,
    required TResult Function() unknown,
  }) {
    return idle(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? buffering,
    TResult? Function(String name)? playing,
    TResult? Function(String name)? ready,
    TResult? Function(String name)? idle,
    TResult? Function(String name)? ended,
    TResult? Function()? unknown,
  }) {
    return idle?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? buffering,
    TResult Function(String name)? playing,
    TResult Function(String name)? ready,
    TResult Function(String name)? idle,
    TResult Function(String name)? ended,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayerStateBuffering value) buffering,
    required TResult Function(PlayerStatePlaying value) playing,
    required TResult Function(PlayerStateReady value) ready,
    required TResult Function(PlayerStateIdle value) idle,
    required TResult Function(PlayerStateEnded value) ended,
    required TResult Function(PlayerStateUnknown value) unknown,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlayerStateBuffering value)? buffering,
    TResult? Function(PlayerStatePlaying value)? playing,
    TResult? Function(PlayerStateReady value)? ready,
    TResult? Function(PlayerStateIdle value)? idle,
    TResult? Function(PlayerStateEnded value)? ended,
    TResult? Function(PlayerStateUnknown value)? unknown,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayerStateBuffering value)? buffering,
    TResult Function(PlayerStatePlaying value)? playing,
    TResult Function(PlayerStateReady value)? ready,
    TResult Function(PlayerStateIdle value)? idle,
    TResult Function(PlayerStateEnded value)? ended,
    TResult Function(PlayerStateUnknown value)? unknown,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class PlayerStateIdle implements PlayerState {
  const factory PlayerStateIdle({required final String name}) =
      _$PlayerStateIdle;

  String get name;
  @JsonKey(ignore: true)
  _$$PlayerStateIdleCopyWith<_$PlayerStateIdle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlayerStateEndedCopyWith<$Res> {
  factory _$$PlayerStateEndedCopyWith(
          _$PlayerStateEnded value, $Res Function(_$PlayerStateEnded) then) =
      __$$PlayerStateEndedCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$PlayerStateEndedCopyWithImpl<$Res>
    extends _$PlayerStateCopyWithImpl<$Res, _$PlayerStateEnded>
    implements _$$PlayerStateEndedCopyWith<$Res> {
  __$$PlayerStateEndedCopyWithImpl(
      _$PlayerStateEnded _value, $Res Function(_$PlayerStateEnded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$PlayerStateEnded(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PlayerStateEnded implements PlayerStateEnded {
  const _$PlayerStateEnded({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'PlayerState.ended(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerStateEnded &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerStateEndedCopyWith<_$PlayerStateEnded> get copyWith =>
      __$$PlayerStateEndedCopyWithImpl<_$PlayerStateEnded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) buffering,
    required TResult Function(String name) playing,
    required TResult Function(String name) ready,
    required TResult Function(String name) idle,
    required TResult Function(String name) ended,
    required TResult Function() unknown,
  }) {
    return ended(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? buffering,
    TResult? Function(String name)? playing,
    TResult? Function(String name)? ready,
    TResult? Function(String name)? idle,
    TResult? Function(String name)? ended,
    TResult? Function()? unknown,
  }) {
    return ended?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? buffering,
    TResult Function(String name)? playing,
    TResult Function(String name)? ready,
    TResult Function(String name)? idle,
    TResult Function(String name)? ended,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (ended != null) {
      return ended(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayerStateBuffering value) buffering,
    required TResult Function(PlayerStatePlaying value) playing,
    required TResult Function(PlayerStateReady value) ready,
    required TResult Function(PlayerStateIdle value) idle,
    required TResult Function(PlayerStateEnded value) ended,
    required TResult Function(PlayerStateUnknown value) unknown,
  }) {
    return ended(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlayerStateBuffering value)? buffering,
    TResult? Function(PlayerStatePlaying value)? playing,
    TResult? Function(PlayerStateReady value)? ready,
    TResult? Function(PlayerStateIdle value)? idle,
    TResult? Function(PlayerStateEnded value)? ended,
    TResult? Function(PlayerStateUnknown value)? unknown,
  }) {
    return ended?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayerStateBuffering value)? buffering,
    TResult Function(PlayerStatePlaying value)? playing,
    TResult Function(PlayerStateReady value)? ready,
    TResult Function(PlayerStateIdle value)? idle,
    TResult Function(PlayerStateEnded value)? ended,
    TResult Function(PlayerStateUnknown value)? unknown,
    required TResult orElse(),
  }) {
    if (ended != null) {
      return ended(this);
    }
    return orElse();
  }
}

abstract class PlayerStateEnded implements PlayerState {
  const factory PlayerStateEnded({required final String name}) =
      _$PlayerStateEnded;

  String get name;
  @JsonKey(ignore: true)
  _$$PlayerStateEndedCopyWith<_$PlayerStateEnded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlayerStateUnknownCopyWith<$Res> {
  factory _$$PlayerStateUnknownCopyWith(_$PlayerStateUnknown value,
          $Res Function(_$PlayerStateUnknown) then) =
      __$$PlayerStateUnknownCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PlayerStateUnknownCopyWithImpl<$Res>
    extends _$PlayerStateCopyWithImpl<$Res, _$PlayerStateUnknown>
    implements _$$PlayerStateUnknownCopyWith<$Res> {
  __$$PlayerStateUnknownCopyWithImpl(
      _$PlayerStateUnknown _value, $Res Function(_$PlayerStateUnknown) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PlayerStateUnknown implements PlayerStateUnknown {
  const _$PlayerStateUnknown();

  @override
  String toString() {
    return 'PlayerState.unknown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PlayerStateUnknown);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) buffering,
    required TResult Function(String name) playing,
    required TResult Function(String name) ready,
    required TResult Function(String name) idle,
    required TResult Function(String name) ended,
    required TResult Function() unknown,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? buffering,
    TResult? Function(String name)? playing,
    TResult? Function(String name)? ready,
    TResult? Function(String name)? idle,
    TResult? Function(String name)? ended,
    TResult? Function()? unknown,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? buffering,
    TResult Function(String name)? playing,
    TResult Function(String name)? ready,
    TResult Function(String name)? idle,
    TResult Function(String name)? ended,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PlayerStateBuffering value) buffering,
    required TResult Function(PlayerStatePlaying value) playing,
    required TResult Function(PlayerStateReady value) ready,
    required TResult Function(PlayerStateIdle value) idle,
    required TResult Function(PlayerStateEnded value) ended,
    required TResult Function(PlayerStateUnknown value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PlayerStateBuffering value)? buffering,
    TResult? Function(PlayerStatePlaying value)? playing,
    TResult? Function(PlayerStateReady value)? ready,
    TResult? Function(PlayerStateIdle value)? idle,
    TResult? Function(PlayerStateEnded value)? ended,
    TResult? Function(PlayerStateUnknown value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PlayerStateBuffering value)? buffering,
    TResult Function(PlayerStatePlaying value)? playing,
    TResult Function(PlayerStateReady value)? ready,
    TResult Function(PlayerStateIdle value)? idle,
    TResult Function(PlayerStateEnded value)? ended,
    TResult Function(PlayerStateUnknown value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class PlayerStateUnknown implements PlayerState {
  const factory PlayerStateUnknown() = _$PlayerStateUnknown;
}
