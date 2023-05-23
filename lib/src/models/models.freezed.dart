// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OkAuthException {
// ignore: avoid_annotating_with_dynamic
  dynamic get error => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic error) error,
    required TResult Function(dynamic error) cancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic error)? error,
    TResult? Function(dynamic error)? cancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic error)? error,
    TResult Function(dynamic error)? cancel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OkAuthErrorException value) error,
    required TResult Function(OkAuthCancelException value) cancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OkAuthErrorException value)? error,
    TResult? Function(OkAuthCancelException value)? cancel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OkAuthErrorException value)? error,
    TResult Function(OkAuthCancelException value)? cancel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OkAuthExceptionCopyWith<OkAuthException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OkAuthExceptionCopyWith<$Res> {
  factory $OkAuthExceptionCopyWith(
          OkAuthException value, $Res Function(OkAuthException) then) =
      _$OkAuthExceptionCopyWithImpl<$Res, OkAuthException>;
  @useResult
  $Res call({dynamic error});
}

/// @nodoc
class _$OkAuthExceptionCopyWithImpl<$Res, $Val extends OkAuthException>
    implements $OkAuthExceptionCopyWith<$Res> {
  _$OkAuthExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OkAuthErrorExceptionCopyWith<$Res>
    implements $OkAuthExceptionCopyWith<$Res> {
  factory _$$OkAuthErrorExceptionCopyWith(_$OkAuthErrorException value,
          $Res Function(_$OkAuthErrorException) then) =
      __$$OkAuthErrorExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic error});
}

/// @nodoc
class __$$OkAuthErrorExceptionCopyWithImpl<$Res>
    extends _$OkAuthExceptionCopyWithImpl<$Res, _$OkAuthErrorException>
    implements _$$OkAuthErrorExceptionCopyWith<$Res> {
  __$$OkAuthErrorExceptionCopyWithImpl(_$OkAuthErrorException _value,
      $Res Function(_$OkAuthErrorException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$OkAuthErrorException(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$OkAuthErrorException implements OkAuthErrorException {
  const _$OkAuthErrorException({this.error});

// ignore: avoid_annotating_with_dynamic
  @override
  final dynamic error;

  @override
  String toString() {
    return 'OkAuthException.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OkAuthErrorException &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OkAuthErrorExceptionCopyWith<_$OkAuthErrorException> get copyWith =>
      __$$OkAuthErrorExceptionCopyWithImpl<_$OkAuthErrorException>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic error) error,
    required TResult Function(dynamic error) cancel,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic error)? error,
    TResult? Function(dynamic error)? cancel,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic error)? error,
    TResult Function(dynamic error)? cancel,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OkAuthErrorException value) error,
    required TResult Function(OkAuthCancelException value) cancel,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OkAuthErrorException value)? error,
    TResult? Function(OkAuthCancelException value)? cancel,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OkAuthErrorException value)? error,
    TResult Function(OkAuthCancelException value)? cancel,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class OkAuthErrorException implements OkAuthException, Exception {
  const factory OkAuthErrorException({final dynamic error}) =
      _$OkAuthErrorException;

  @override // ignore: avoid_annotating_with_dynamic
  dynamic get error;
  @override
  @JsonKey(ignore: true)
  _$$OkAuthErrorExceptionCopyWith<_$OkAuthErrorException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OkAuthCancelExceptionCopyWith<$Res>
    implements $OkAuthExceptionCopyWith<$Res> {
  factory _$$OkAuthCancelExceptionCopyWith(_$OkAuthCancelException value,
          $Res Function(_$OkAuthCancelException) then) =
      __$$OkAuthCancelExceptionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic error});
}

/// @nodoc
class __$$OkAuthCancelExceptionCopyWithImpl<$Res>
    extends _$OkAuthExceptionCopyWithImpl<$Res, _$OkAuthCancelException>
    implements _$$OkAuthCancelExceptionCopyWith<$Res> {
  __$$OkAuthCancelExceptionCopyWithImpl(_$OkAuthCancelException _value,
      $Res Function(_$OkAuthCancelException) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$OkAuthCancelException(
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$OkAuthCancelException implements OkAuthCancelException {
  const _$OkAuthCancelException({this.error});

// ignore: avoid_annotating_with_dynamic
  @override
  final dynamic error;

  @override
  String toString() {
    return 'OkAuthException.cancel(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OkAuthCancelException &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OkAuthCancelExceptionCopyWith<_$OkAuthCancelException> get copyWith =>
      __$$OkAuthCancelExceptionCopyWithImpl<_$OkAuthCancelException>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic error) error,
    required TResult Function(dynamic error) cancel,
  }) {
    return cancel(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic error)? error,
    TResult? Function(dynamic error)? cancel,
  }) {
    return cancel?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic error)? error,
    TResult Function(dynamic error)? cancel,
    required TResult orElse(),
  }) {
    if (cancel != null) {
      return cancel(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OkAuthErrorException value) error,
    required TResult Function(OkAuthCancelException value) cancel,
  }) {
    return cancel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OkAuthErrorException value)? error,
    TResult? Function(OkAuthCancelException value)? cancel,
  }) {
    return cancel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OkAuthErrorException value)? error,
    TResult Function(OkAuthCancelException value)? cancel,
    required TResult orElse(),
  }) {
    if (cancel != null) {
      return cancel(this);
    }
    return orElse();
  }
}

abstract class OkAuthCancelException implements OkAuthException, Exception {
  const factory OkAuthCancelException({final dynamic error}) =
      _$OkAuthCancelException;

  @override // ignore: avoid_annotating_with_dynamic
  dynamic get error;
  @override
  @JsonKey(ignore: true)
  _$$OkAuthCancelExceptionCopyWith<_$OkAuthCancelException> get copyWith =>
      throw _privateConstructorUsedError;
}

OkAuthResponse _$OkAuthResponseFromJson(Map<String, dynamic> json) {
  return _OkAuthResponse.fromJson(json);
}

/// @nodoc
mixin _$OkAuthResponse {
  String get accessToken => throw _privateConstructorUsedError;
  String get sessionSecretKey => throw _privateConstructorUsedError;
  @JsonKey(name: 'expires_in', fromJson: intFromString)
  int get expiresInSeconds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OkAuthResponseCopyWith<OkAuthResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OkAuthResponseCopyWith<$Res> {
  factory $OkAuthResponseCopyWith(
          OkAuthResponse value, $Res Function(OkAuthResponse) then) =
      _$OkAuthResponseCopyWithImpl<$Res, OkAuthResponse>;
  @useResult
  $Res call(
      {String accessToken,
      String sessionSecretKey,
      @JsonKey(name: 'expires_in', fromJson: intFromString)
          int expiresInSeconds});
}

/// @nodoc
class _$OkAuthResponseCopyWithImpl<$Res, $Val extends OkAuthResponse>
    implements $OkAuthResponseCopyWith<$Res> {
  _$OkAuthResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? sessionSecretKey = null,
    Object? expiresInSeconds = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      sessionSecretKey: null == sessionSecretKey
          ? _value.sessionSecretKey
          : sessionSecretKey // ignore: cast_nullable_to_non_nullable
              as String,
      expiresInSeconds: null == expiresInSeconds
          ? _value.expiresInSeconds
          : expiresInSeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OkAuthResponseCopyWith<$Res>
    implements $OkAuthResponseCopyWith<$Res> {
  factory _$$_OkAuthResponseCopyWith(
          _$_OkAuthResponse value, $Res Function(_$_OkAuthResponse) then) =
      __$$_OkAuthResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String accessToken,
      String sessionSecretKey,
      @JsonKey(name: 'expires_in', fromJson: intFromString)
          int expiresInSeconds});
}

/// @nodoc
class __$$_OkAuthResponseCopyWithImpl<$Res>
    extends _$OkAuthResponseCopyWithImpl<$Res, _$_OkAuthResponse>
    implements _$$_OkAuthResponseCopyWith<$Res> {
  __$$_OkAuthResponseCopyWithImpl(
      _$_OkAuthResponse _value, $Res Function(_$_OkAuthResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? sessionSecretKey = null,
    Object? expiresInSeconds = null,
  }) {
    return _then(_$_OkAuthResponse(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      sessionSecretKey: null == sessionSecretKey
          ? _value.sessionSecretKey
          : sessionSecretKey // ignore: cast_nullable_to_non_nullable
              as String,
      expiresInSeconds: null == expiresInSeconds
          ? _value.expiresInSeconds
          : expiresInSeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_OkAuthResponse implements _OkAuthResponse {
  const _$_OkAuthResponse(
      {required this.accessToken,
      required this.sessionSecretKey,
      @JsonKey(name: 'expires_in', fromJson: intFromString)
          required this.expiresInSeconds});

  factory _$_OkAuthResponse.fromJson(Map<String, dynamic> json) =>
      _$$_OkAuthResponseFromJson(json);

  @override
  final String accessToken;
  @override
  final String sessionSecretKey;
  @override
  @JsonKey(name: 'expires_in', fromJson: intFromString)
  final int expiresInSeconds;

  @override
  String toString() {
    return 'OkAuthResponse(accessToken: $accessToken, sessionSecretKey: $sessionSecretKey, expiresInSeconds: $expiresInSeconds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OkAuthResponse &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.sessionSecretKey, sessionSecretKey) ||
                other.sessionSecretKey == sessionSecretKey) &&
            (identical(other.expiresInSeconds, expiresInSeconds) ||
                other.expiresInSeconds == expiresInSeconds));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, accessToken, sessionSecretKey, expiresInSeconds);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OkAuthResponseCopyWith<_$_OkAuthResponse> get copyWith =>
      __$$_OkAuthResponseCopyWithImpl<_$_OkAuthResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OkAuthResponseToJson(
      this,
    );
  }
}

abstract class _OkAuthResponse implements OkAuthResponse {
  const factory _OkAuthResponse(
      {required final String accessToken,
      required final String sessionSecretKey,
      @JsonKey(name: 'expires_in', fromJson: intFromString)
          required final int expiresInSeconds}) = _$_OkAuthResponse;

  factory _OkAuthResponse.fromJson(Map<String, dynamic> json) =
      _$_OkAuthResponse.fromJson;

  @override
  String get accessToken;
  @override
  String get sessionSecretKey;
  @override
  @JsonKey(name: 'expires_in', fromJson: intFromString)
  int get expiresInSeconds;
  @override
  @JsonKey(ignore: true)
  _$$_OkAuthResponseCopyWith<_$_OkAuthResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
