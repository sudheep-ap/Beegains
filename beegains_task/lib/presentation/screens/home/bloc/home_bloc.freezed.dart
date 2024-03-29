// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onInitialLoadEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onInitialLoadEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onInitialLoadEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnInitialLoadEvent value) onInitialLoadEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnInitialLoadEvent value)? onInitialLoadEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnInitialLoadEvent value)? onInitialLoadEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OnInitialLoadEventCopyWith<$Res> {
  factory _$$OnInitialLoadEventCopyWith(_$OnInitialLoadEvent value,
          $Res Function(_$OnInitialLoadEvent) then) =
      __$$OnInitialLoadEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnInitialLoadEventCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$OnInitialLoadEvent>
    implements _$$OnInitialLoadEventCopyWith<$Res> {
  __$$OnInitialLoadEventCopyWithImpl(
      _$OnInitialLoadEvent _value, $Res Function(_$OnInitialLoadEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnInitialLoadEvent implements OnInitialLoadEvent {
  _$OnInitialLoadEvent();

  @override
  String toString() {
    return 'HomeEvent.onInitialLoadEvent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnInitialLoadEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onInitialLoadEvent,
  }) {
    return onInitialLoadEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onInitialLoadEvent,
  }) {
    return onInitialLoadEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onInitialLoadEvent,
    required TResult orElse(),
  }) {
    if (onInitialLoadEvent != null) {
      return onInitialLoadEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnInitialLoadEvent value) onInitialLoadEvent,
  }) {
    return onInitialLoadEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnInitialLoadEvent value)? onInitialLoadEvent,
  }) {
    return onInitialLoadEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnInitialLoadEvent value)? onInitialLoadEvent,
    required TResult orElse(),
  }) {
    if (onInitialLoadEvent != null) {
      return onInitialLoadEvent(this);
    }
    return orElse();
  }
}

abstract class OnInitialLoadEvent implements HomeEvent {
  factory OnInitialLoadEvent() = _$OnInitialLoadEvent;
}

/// @nodoc
mixin _$HomeState {
  HomeEnquiryModel? get homeEnquiryModel => throw _privateConstructorUsedError;
  AppStatus get homeEnquiryState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call({HomeEnquiryModel? homeEnquiryModel, AppStatus homeEnquiryState});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homeEnquiryModel = freezed,
    Object? homeEnquiryState = null,
  }) {
    return _then(_value.copyWith(
      homeEnquiryModel: freezed == homeEnquiryModel
          ? _value.homeEnquiryModel
          : homeEnquiryModel // ignore: cast_nullable_to_non_nullable
              as HomeEnquiryModel?,
      homeEnquiryState: null == homeEnquiryState
          ? _value.homeEnquiryState
          : homeEnquiryState // ignore: cast_nullable_to_non_nullable
              as AppStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HomeEnquiryModel? homeEnquiryModel, AppStatus homeEnquiryState});
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeState>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homeEnquiryModel = freezed,
    Object? homeEnquiryState = null,
  }) {
    return _then(_$_HomeState(
      homeEnquiryModel: freezed == homeEnquiryModel
          ? _value.homeEnquiryModel
          : homeEnquiryModel // ignore: cast_nullable_to_non_nullable
              as HomeEnquiryModel?,
      homeEnquiryState: null == homeEnquiryState
          ? _value.homeEnquiryState
          : homeEnquiryState // ignore: cast_nullable_to_non_nullable
              as AppStatus,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  _$_HomeState(
      {required this.homeEnquiryModel, required this.homeEnquiryState});

  @override
  final HomeEnquiryModel? homeEnquiryModel;
  @override
  final AppStatus homeEnquiryState;

  @override
  String toString() {
    return 'HomeState(homeEnquiryModel: $homeEnquiryModel, homeEnquiryState: $homeEnquiryState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            (identical(other.homeEnquiryModel, homeEnquiryModel) ||
                other.homeEnquiryModel == homeEnquiryModel) &&
            (identical(other.homeEnquiryState, homeEnquiryState) ||
                other.homeEnquiryState == homeEnquiryState));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, homeEnquiryModel, homeEnquiryState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  factory _HomeState(
      {required final HomeEnquiryModel? homeEnquiryModel,
      required final AppStatus homeEnquiryState}) = _$_HomeState;

  @override
  HomeEnquiryModel? get homeEnquiryModel;
  @override
  AppStatus get homeEnquiryState;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
