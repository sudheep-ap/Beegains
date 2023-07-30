// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginEvent {
  String get userName => throw _privateConstructorUsedError;
  String get userPassword => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName, String userPassword)
        onLoginInEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName, String userPassword)? onLoginInEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName, String userPassword)? onLoginInEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoginEvent value) onLoginInEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnLoginEvent value)? onLoginInEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoginEvent value)? onLoginInEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginEventCopyWith<LoginEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res, LoginEvent>;
  @useResult
  $Res call({String userName, String userPassword});
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? userPassword = null,
  }) {
    return _then(_value.copyWith(
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userPassword: null == userPassword
          ? _value.userPassword
          : userPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OnLoginEventCopyWith<$Res>
    implements $LoginEventCopyWith<$Res> {
  factory _$$OnLoginEventCopyWith(
          _$OnLoginEvent value, $Res Function(_$OnLoginEvent) then) =
      __$$OnLoginEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userName, String userPassword});
}

/// @nodoc
class __$$OnLoginEventCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$OnLoginEvent>
    implements _$$OnLoginEventCopyWith<$Res> {
  __$$OnLoginEventCopyWithImpl(
      _$OnLoginEvent _value, $Res Function(_$OnLoginEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? userPassword = null,
  }) {
    return _then(_$OnLoginEvent(
      null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      null == userPassword
          ? _value.userPassword
          : userPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnLoginEvent implements OnLoginEvent {
  _$OnLoginEvent(this.userName, this.userPassword);

  @override
  final String userName;
  @override
  final String userPassword;

  @override
  String toString() {
    return 'LoginEvent.onLoginInEvent(userName: $userName, userPassword: $userPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnLoginEvent &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userPassword, userPassword) ||
                other.userPassword == userPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userName, userPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnLoginEventCopyWith<_$OnLoginEvent> get copyWith =>
      __$$OnLoginEventCopyWithImpl<_$OnLoginEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userName, String userPassword)
        onLoginInEvent,
  }) {
    return onLoginInEvent(userName, userPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userName, String userPassword)? onLoginInEvent,
  }) {
    return onLoginInEvent?.call(userName, userPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userName, String userPassword)? onLoginInEvent,
    required TResult orElse(),
  }) {
    if (onLoginInEvent != null) {
      return onLoginInEvent(userName, userPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnLoginEvent value) onLoginInEvent,
  }) {
    return onLoginInEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnLoginEvent value)? onLoginInEvent,
  }) {
    return onLoginInEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnLoginEvent value)? onLoginInEvent,
    required TResult orElse(),
  }) {
    if (onLoginInEvent != null) {
      return onLoginInEvent(this);
    }
    return orElse();
  }
}

abstract class OnLoginEvent implements LoginEvent {
  factory OnLoginEvent(final String userName, final String userPassword) =
      _$OnLoginEvent;

  @override
  String get userName;
  @override
  String get userPassword;
  @override
  @JsonKey(ignore: true)
  _$$OnLoginEventCopyWith<_$OnLoginEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LoginState {
  LoginModel? get loginModel => throw _privateConstructorUsedError;
  AppStatus get loginState => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call({LoginModel? loginModel, AppStatus loginState});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginModel = freezed,
    Object? loginState = null,
  }) {
    return _then(_value.copyWith(
      loginModel: freezed == loginModel
          ? _value.loginModel
          : loginModel // ignore: cast_nullable_to_non_nullable
              as LoginModel?,
      loginState: null == loginState
          ? _value.loginState
          : loginState // ignore: cast_nullable_to_non_nullable
              as AppStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoginStateCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$_LoginStateCopyWith(
          _$_LoginState value, $Res Function(_$_LoginState) then) =
      __$$_LoginStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LoginModel? loginModel, AppStatus loginState});
}

/// @nodoc
class __$$_LoginStateCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$_LoginState>
    implements _$$_LoginStateCopyWith<$Res> {
  __$$_LoginStateCopyWithImpl(
      _$_LoginState _value, $Res Function(_$_LoginState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginModel = freezed,
    Object? loginState = null,
  }) {
    return _then(_$_LoginState(
      loginModel: freezed == loginModel
          ? _value.loginModel
          : loginModel // ignore: cast_nullable_to_non_nullable
              as LoginModel?,
      loginState: null == loginState
          ? _value.loginState
          : loginState // ignore: cast_nullable_to_non_nullable
              as AppStatus,
    ));
  }
}

/// @nodoc

class _$_LoginState implements _LoginState {
  _$_LoginState({required this.loginModel, required this.loginState});

  @override
  final LoginModel? loginModel;
  @override
  final AppStatus loginState;

  @override
  String toString() {
    return 'LoginState(loginModel: $loginModel, loginState: $loginState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginState &&
            (identical(other.loginModel, loginModel) ||
                other.loginModel == loginModel) &&
            (identical(other.loginState, loginState) ||
                other.loginState == loginState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loginModel, loginState);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      __$$_LoginStateCopyWithImpl<_$_LoginState>(this, _$identity);
}

abstract class _LoginState implements LoginState {
  factory _LoginState(
      {required final LoginModel? loginModel,
      required final AppStatus loginState}) = _$_LoginState;

  @override
  LoginModel? get loginModel;
  @override
  AppStatus get loginState;
  @override
  @JsonKey(ignore: true)
  _$$_LoginStateCopyWith<_$_LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}
