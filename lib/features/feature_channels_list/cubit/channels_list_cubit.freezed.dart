// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'channels_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChannelsListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetching,
    required TResult Function(List<ChannelModel> channelList) fetched,
    required TResult Function(String msg) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetching,
    TResult? Function(List<ChannelModel> channelList)? fetched,
    TResult? Function(String msg)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetching,
    TResult Function(List<ChannelModel> channelList)? fetched,
    TResult Function(String msg)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchingChannelsListState value) fetching,
    required TResult Function(_FetchedChannelsListState value) fetched,
    required TResult Function(_FailedChannelsListState value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchingChannelsListState value)? fetching,
    TResult? Function(_FetchedChannelsListState value)? fetched,
    TResult? Function(_FailedChannelsListState value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchingChannelsListState value)? fetching,
    TResult Function(_FetchedChannelsListState value)? fetched,
    TResult Function(_FailedChannelsListState value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelsListStateCopyWith<$Res> {
  factory $ChannelsListStateCopyWith(
          ChannelsListState value, $Res Function(ChannelsListState) then) =
      _$ChannelsListStateCopyWithImpl<$Res, ChannelsListState>;
}

/// @nodoc
class _$ChannelsListStateCopyWithImpl<$Res, $Val extends ChannelsListState>
    implements $ChannelsListStateCopyWith<$Res> {
  _$ChannelsListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ChannelsListStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ChannelsListState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetching,
    required TResult Function(List<ChannelModel> channelList) fetched,
    required TResult Function(String msg) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetching,
    TResult? Function(List<ChannelModel> channelList)? fetched,
    TResult? Function(String msg)? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetching,
    TResult Function(List<ChannelModel> channelList)? fetched,
    TResult Function(String msg)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchingChannelsListState value) fetching,
    required TResult Function(_FetchedChannelsListState value) fetched,
    required TResult Function(_FailedChannelsListState value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchingChannelsListState value)? fetching,
    TResult? Function(_FetchedChannelsListState value)? fetched,
    TResult? Function(_FailedChannelsListState value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchingChannelsListState value)? fetching,
    TResult Function(_FetchedChannelsListState value)? fetched,
    TResult Function(_FailedChannelsListState value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ChannelsListState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$FetchingChannelsListStateImplCopyWith<$Res> {
  factory _$$FetchingChannelsListStateImplCopyWith(
          _$FetchingChannelsListStateImpl value,
          $Res Function(_$FetchingChannelsListStateImpl) then) =
      __$$FetchingChannelsListStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchingChannelsListStateImplCopyWithImpl<$Res>
    extends _$ChannelsListStateCopyWithImpl<$Res,
        _$FetchingChannelsListStateImpl>
    implements _$$FetchingChannelsListStateImplCopyWith<$Res> {
  __$$FetchingChannelsListStateImplCopyWithImpl(
      _$FetchingChannelsListStateImpl _value,
      $Res Function(_$FetchingChannelsListStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchingChannelsListStateImpl implements _FetchingChannelsListState {
  const _$FetchingChannelsListStateImpl();

  @override
  String toString() {
    return 'ChannelsListState.fetching()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchingChannelsListStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetching,
    required TResult Function(List<ChannelModel> channelList) fetched,
    required TResult Function(String msg) failed,
  }) {
    return fetching();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetching,
    TResult? Function(List<ChannelModel> channelList)? fetched,
    TResult? Function(String msg)? failed,
  }) {
    return fetching?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetching,
    TResult Function(List<ChannelModel> channelList)? fetched,
    TResult Function(String msg)? failed,
    required TResult orElse(),
  }) {
    if (fetching != null) {
      return fetching();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchingChannelsListState value) fetching,
    required TResult Function(_FetchedChannelsListState value) fetched,
    required TResult Function(_FailedChannelsListState value) failed,
  }) {
    return fetching(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchingChannelsListState value)? fetching,
    TResult? Function(_FetchedChannelsListState value)? fetched,
    TResult? Function(_FailedChannelsListState value)? failed,
  }) {
    return fetching?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchingChannelsListState value)? fetching,
    TResult Function(_FetchedChannelsListState value)? fetched,
    TResult Function(_FailedChannelsListState value)? failed,
    required TResult orElse(),
  }) {
    if (fetching != null) {
      return fetching(this);
    }
    return orElse();
  }
}

abstract class _FetchingChannelsListState implements ChannelsListState {
  const factory _FetchingChannelsListState() = _$FetchingChannelsListStateImpl;
}

/// @nodoc
abstract class _$$FetchedChannelsListStateImplCopyWith<$Res> {
  factory _$$FetchedChannelsListStateImplCopyWith(
          _$FetchedChannelsListStateImpl value,
          $Res Function(_$FetchedChannelsListStateImpl) then) =
      __$$FetchedChannelsListStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ChannelModel> channelList});
}

/// @nodoc
class __$$FetchedChannelsListStateImplCopyWithImpl<$Res>
    extends _$ChannelsListStateCopyWithImpl<$Res,
        _$FetchedChannelsListStateImpl>
    implements _$$FetchedChannelsListStateImplCopyWith<$Res> {
  __$$FetchedChannelsListStateImplCopyWithImpl(
      _$FetchedChannelsListStateImpl _value,
      $Res Function(_$FetchedChannelsListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channelList = null,
  }) {
    return _then(_$FetchedChannelsListStateImpl(
      channelList: null == channelList
          ? _value._channelList
          : channelList // ignore: cast_nullable_to_non_nullable
              as List<ChannelModel>,
    ));
  }
}

/// @nodoc

class _$FetchedChannelsListStateImpl implements _FetchedChannelsListState {
  const _$FetchedChannelsListStateImpl(
      {required final List<ChannelModel> channelList})
      : _channelList = channelList;

  final List<ChannelModel> _channelList;
  @override
  List<ChannelModel> get channelList {
    if (_channelList is EqualUnmodifiableListView) return _channelList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_channelList);
  }

  @override
  String toString() {
    return 'ChannelsListState.fetched(channelList: $channelList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchedChannelsListStateImpl &&
            const DeepCollectionEquality()
                .equals(other._channelList, _channelList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_channelList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchedChannelsListStateImplCopyWith<_$FetchedChannelsListStateImpl>
      get copyWith => __$$FetchedChannelsListStateImplCopyWithImpl<
          _$FetchedChannelsListStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetching,
    required TResult Function(List<ChannelModel> channelList) fetched,
    required TResult Function(String msg) failed,
  }) {
    return fetched(channelList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetching,
    TResult? Function(List<ChannelModel> channelList)? fetched,
    TResult? Function(String msg)? failed,
  }) {
    return fetched?.call(channelList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetching,
    TResult Function(List<ChannelModel> channelList)? fetched,
    TResult Function(String msg)? failed,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(channelList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchingChannelsListState value) fetching,
    required TResult Function(_FetchedChannelsListState value) fetched,
    required TResult Function(_FailedChannelsListState value) failed,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchingChannelsListState value)? fetching,
    TResult? Function(_FetchedChannelsListState value)? fetched,
    TResult? Function(_FailedChannelsListState value)? failed,
  }) {
    return fetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchingChannelsListState value)? fetching,
    TResult Function(_FetchedChannelsListState value)? fetched,
    TResult Function(_FailedChannelsListState value)? failed,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class _FetchedChannelsListState implements ChannelsListState {
  const factory _FetchedChannelsListState(
          {required final List<ChannelModel> channelList}) =
      _$FetchedChannelsListStateImpl;

  List<ChannelModel> get channelList;
  @JsonKey(ignore: true)
  _$$FetchedChannelsListStateImplCopyWith<_$FetchedChannelsListStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedChannelsListStateImplCopyWith<$Res> {
  factory _$$FailedChannelsListStateImplCopyWith(
          _$FailedChannelsListStateImpl value,
          $Res Function(_$FailedChannelsListStateImpl) then) =
      __$$FailedChannelsListStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String msg});
}

/// @nodoc
class __$$FailedChannelsListStateImplCopyWithImpl<$Res>
    extends _$ChannelsListStateCopyWithImpl<$Res, _$FailedChannelsListStateImpl>
    implements _$$FailedChannelsListStateImplCopyWith<$Res> {
  __$$FailedChannelsListStateImplCopyWithImpl(
      _$FailedChannelsListStateImpl _value,
      $Res Function(_$FailedChannelsListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? msg = null,
  }) {
    return _then(_$FailedChannelsListStateImpl(
      null == msg
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailedChannelsListStateImpl implements _FailedChannelsListState {
  const _$FailedChannelsListStateImpl(this.msg);

  @override
  final String msg;

  @override
  String toString() {
    return 'ChannelsListState.failed(msg: $msg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedChannelsListStateImpl &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedChannelsListStateImplCopyWith<_$FailedChannelsListStateImpl>
      get copyWith => __$$FailedChannelsListStateImplCopyWithImpl<
          _$FailedChannelsListStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() fetching,
    required TResult Function(List<ChannelModel> channelList) fetched,
    required TResult Function(String msg) failed,
  }) {
    return failed(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? fetching,
    TResult? Function(List<ChannelModel> channelList)? fetched,
    TResult? Function(String msg)? failed,
  }) {
    return failed?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? fetching,
    TResult Function(List<ChannelModel> channelList)? fetched,
    TResult Function(String msg)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FetchingChannelsListState value) fetching,
    required TResult Function(_FetchedChannelsListState value) fetched,
    required TResult Function(_FailedChannelsListState value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_FetchingChannelsListState value)? fetching,
    TResult? Function(_FetchedChannelsListState value)? fetched,
    TResult? Function(_FailedChannelsListState value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FetchingChannelsListState value)? fetching,
    TResult Function(_FetchedChannelsListState value)? fetched,
    TResult Function(_FailedChannelsListState value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _FailedChannelsListState implements ChannelsListState {
  const factory _FailedChannelsListState(final String msg) =
      _$FailedChannelsListStateImpl;

  String get msg;
  @JsonKey(ignore: true)
  _$$FailedChannelsListStateImplCopyWith<_$FailedChannelsListStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
