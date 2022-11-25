// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sfera_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SferaStates {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function() success,
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function()? success,
    TResult? Function()? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function()? success,
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SferaStatesCopyWith<$Res> {
  factory $SferaStatesCopyWith(
          SferaStates value, $Res Function(SferaStates) then) =
      _$SferaStatesCopyWithImpl<$Res, SferaStates>;
}

/// @nodoc
class _$SferaStatesCopyWithImpl<$Res, $Val extends SferaStates>
    implements $SferaStatesCopyWith<$Res> {
  _$SferaStatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$SferaStatesCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'SferaStates.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function() success,
    required TResult Function() initial,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function()? success,
    TResult? Function()? initial,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function()? success,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
    required TResult Function(_Initial value) initial,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
    TResult? Function(_Initial value)? initial,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements SferaStates {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$SferaStatesCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_Error(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'SferaStates.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function() success,
    required TResult Function() initial,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function()? success,
    TResult? Function()? initial,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function()? success,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
    required TResult Function(_Initial value) initial,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
    TResult? Function(_Initial value)? initial,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements SferaStates {
  const factory _Error({required final String message}) = _$_Error;

  String get message;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<$Res> {
  factory _$$_SuccessCopyWith(
          _$_Success value, $Res Function(_$_Success) then) =
      __$$_SuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SuccessCopyWithImpl<$Res>
    extends _$SferaStatesCopyWithImpl<$Res, _$_Success>
    implements _$$_SuccessCopyWith<$Res> {
  __$$_SuccessCopyWithImpl(_$_Success _value, $Res Function(_$_Success) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Success implements _Success {
  const _$_Success();

  @override
  String toString() {
    return 'SferaStates.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Success);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function() success,
    required TResult Function() initial,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function()? success,
    TResult? Function()? initial,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function()? success,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
    required TResult Function(_Initial value) initial,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
    TResult? Function(_Initial value)? initial,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements SferaStates {
  const factory _Success() = _$_Success;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$SferaStatesCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'SferaStates.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(String message) error,
    required TResult Function() success,
    required TResult Function() initial,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(String message)? error,
    TResult? Function()? success,
    TResult? Function()? initial,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(String message)? error,
    TResult Function()? success,
    TResult Function()? initial,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Success value) success,
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Success value)? success,
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Success value)? success,
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SferaStates {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
mixin _$SferaEvents {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email, String password, bool Function()? formKey)
        loginByEmail,
    required TResult Function() loginByGoogle,
    required TResult Function() forgotPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, bool Function()? formKey)?
        loginByEmail,
    TResult? Function()? loginByGoogle,
    TResult? Function()? forgotPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, bool Function()? formKey)?
        loginByEmail,
    TResult Function()? loginByGoogle,
    TResult Function()? forgotPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginByEmail value) loginByEmail,
    required TResult Function(_LoginByGoogle value) loginByGoogle,
    required TResult Function(_ForgotPassword value) forgotPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginByEmail value)? loginByEmail,
    TResult? Function(_LoginByGoogle value)? loginByGoogle,
    TResult? Function(_ForgotPassword value)? forgotPassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginByEmail value)? loginByEmail,
    TResult Function(_LoginByGoogle value)? loginByGoogle,
    TResult Function(_ForgotPassword value)? forgotPassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SferaEventsCopyWith<$Res> {
  factory $SferaEventsCopyWith(
          SferaEvents value, $Res Function(SferaEvents) then) =
      _$SferaEventsCopyWithImpl<$Res, SferaEvents>;
}

/// @nodoc
class _$SferaEventsCopyWithImpl<$Res, $Val extends SferaEvents>
    implements $SferaEventsCopyWith<$Res> {
  _$SferaEventsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoginByEmailCopyWith<$Res> {
  factory _$$_LoginByEmailCopyWith(
          _$_LoginByEmail value, $Res Function(_$_LoginByEmail) then) =
      __$$_LoginByEmailCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password, bool Function()? formKey});
}

/// @nodoc
class __$$_LoginByEmailCopyWithImpl<$Res>
    extends _$SferaEventsCopyWithImpl<$Res, _$_LoginByEmail>
    implements _$$_LoginByEmailCopyWith<$Res> {
  __$$_LoginByEmailCopyWithImpl(
      _$_LoginByEmail _value, $Res Function(_$_LoginByEmail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? formKey = freezed,
  }) {
    return _then(_$_LoginByEmail(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      formKey: freezed == formKey
          ? _value.formKey
          : formKey // ignore: cast_nullable_to_non_nullable
              as bool Function()?,
    ));
  }
}

/// @nodoc

class _$_LoginByEmail implements _LoginByEmail {
  const _$_LoginByEmail(
      {required this.email, required this.password, required this.formKey});

  @override
  final String email;
  @override
  final String password;
  @override
  final bool Function()? formKey;

  @override
  String toString() {
    return 'SferaEvents.loginByEmail(email: $email, password: $password, formKey: $formKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginByEmail &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.formKey, formKey) || other.formKey == formKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, formKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginByEmailCopyWith<_$_LoginByEmail> get copyWith =>
      __$$_LoginByEmailCopyWithImpl<_$_LoginByEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email, String password, bool Function()? formKey)
        loginByEmail,
    required TResult Function() loginByGoogle,
    required TResult Function() forgotPassword,
  }) {
    return loginByEmail(email, password, formKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, bool Function()? formKey)?
        loginByEmail,
    TResult? Function()? loginByGoogle,
    TResult? Function()? forgotPassword,
  }) {
    return loginByEmail?.call(email, password, formKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, bool Function()? formKey)?
        loginByEmail,
    TResult Function()? loginByGoogle,
    TResult Function()? forgotPassword,
    required TResult orElse(),
  }) {
    if (loginByEmail != null) {
      return loginByEmail(email, password, formKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginByEmail value) loginByEmail,
    required TResult Function(_LoginByGoogle value) loginByGoogle,
    required TResult Function(_ForgotPassword value) forgotPassword,
  }) {
    return loginByEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginByEmail value)? loginByEmail,
    TResult? Function(_LoginByGoogle value)? loginByGoogle,
    TResult? Function(_ForgotPassword value)? forgotPassword,
  }) {
    return loginByEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginByEmail value)? loginByEmail,
    TResult Function(_LoginByGoogle value)? loginByGoogle,
    TResult Function(_ForgotPassword value)? forgotPassword,
    required TResult orElse(),
  }) {
    if (loginByEmail != null) {
      return loginByEmail(this);
    }
    return orElse();
  }
}

abstract class _LoginByEmail implements SferaEvents {
  const factory _LoginByEmail(
      {required final String email,
      required final String password,
      required final bool Function()? formKey}) = _$_LoginByEmail;

  String get email;
  String get password;
  bool Function()? get formKey;
  @JsonKey(ignore: true)
  _$$_LoginByEmailCopyWith<_$_LoginByEmail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoginByGoogleCopyWith<$Res> {
  factory _$$_LoginByGoogleCopyWith(
          _$_LoginByGoogle value, $Res Function(_$_LoginByGoogle) then) =
      __$$_LoginByGoogleCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoginByGoogleCopyWithImpl<$Res>
    extends _$SferaEventsCopyWithImpl<$Res, _$_LoginByGoogle>
    implements _$$_LoginByGoogleCopyWith<$Res> {
  __$$_LoginByGoogleCopyWithImpl(
      _$_LoginByGoogle _value, $Res Function(_$_LoginByGoogle) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoginByGoogle implements _LoginByGoogle {
  const _$_LoginByGoogle();

  @override
  String toString() {
    return 'SferaEvents.loginByGoogle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoginByGoogle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email, String password, bool Function()? formKey)
        loginByEmail,
    required TResult Function() loginByGoogle,
    required TResult Function() forgotPassword,
  }) {
    return loginByGoogle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, bool Function()? formKey)?
        loginByEmail,
    TResult? Function()? loginByGoogle,
    TResult? Function()? forgotPassword,
  }) {
    return loginByGoogle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, bool Function()? formKey)?
        loginByEmail,
    TResult Function()? loginByGoogle,
    TResult Function()? forgotPassword,
    required TResult orElse(),
  }) {
    if (loginByGoogle != null) {
      return loginByGoogle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginByEmail value) loginByEmail,
    required TResult Function(_LoginByGoogle value) loginByGoogle,
    required TResult Function(_ForgotPassword value) forgotPassword,
  }) {
    return loginByGoogle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginByEmail value)? loginByEmail,
    TResult? Function(_LoginByGoogle value)? loginByGoogle,
    TResult? Function(_ForgotPassword value)? forgotPassword,
  }) {
    return loginByGoogle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginByEmail value)? loginByEmail,
    TResult Function(_LoginByGoogle value)? loginByGoogle,
    TResult Function(_ForgotPassword value)? forgotPassword,
    required TResult orElse(),
  }) {
    if (loginByGoogle != null) {
      return loginByGoogle(this);
    }
    return orElse();
  }
}

abstract class _LoginByGoogle implements SferaEvents {
  const factory _LoginByGoogle() = _$_LoginByGoogle;
}

/// @nodoc
abstract class _$$_ForgotPasswordCopyWith<$Res> {
  factory _$$_ForgotPasswordCopyWith(
          _$_ForgotPassword value, $Res Function(_$_ForgotPassword) then) =
      __$$_ForgotPasswordCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ForgotPasswordCopyWithImpl<$Res>
    extends _$SferaEventsCopyWithImpl<$Res, _$_ForgotPassword>
    implements _$$_ForgotPasswordCopyWith<$Res> {
  __$$_ForgotPasswordCopyWithImpl(
      _$_ForgotPassword _value, $Res Function(_$_ForgotPassword) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ForgotPassword implements _ForgotPassword {
  const _$_ForgotPassword();

  @override
  String toString() {
    return 'SferaEvents.forgotPassword()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ForgotPassword);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String email, String password, bool Function()? formKey)
        loginByEmail,
    required TResult Function() loginByGoogle,
    required TResult Function() forgotPassword,
  }) {
    return forgotPassword();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password, bool Function()? formKey)?
        loginByEmail,
    TResult? Function()? loginByGoogle,
    TResult? Function()? forgotPassword,
  }) {
    return forgotPassword?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, bool Function()? formKey)?
        loginByEmail,
    TResult Function()? loginByGoogle,
    TResult Function()? forgotPassword,
    required TResult orElse(),
  }) {
    if (forgotPassword != null) {
      return forgotPassword();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginByEmail value) loginByEmail,
    required TResult Function(_LoginByGoogle value) loginByGoogle,
    required TResult Function(_ForgotPassword value) forgotPassword,
  }) {
    return forgotPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginByEmail value)? loginByEmail,
    TResult? Function(_LoginByGoogle value)? loginByGoogle,
    TResult? Function(_ForgotPassword value)? forgotPassword,
  }) {
    return forgotPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginByEmail value)? loginByEmail,
    TResult Function(_LoginByGoogle value)? loginByGoogle,
    TResult Function(_ForgotPassword value)? forgotPassword,
    required TResult orElse(),
  }) {
    if (forgotPassword != null) {
      return forgotPassword(this);
    }
    return orElse();
  }
}

abstract class _ForgotPassword implements SferaEvents {
  const factory _ForgotPassword() = _$_ForgotPassword;
}
