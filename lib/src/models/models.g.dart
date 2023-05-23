// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OkAuthErrorException _$$OkAuthErrorExceptionFromJson(
        Map<String, dynamic> json) =>
    _$OkAuthErrorException(
      error: json['error'],
    );

Map<String, dynamic> _$$OkAuthErrorExceptionToJson(
        _$OkAuthErrorException instance) =>
    <String, dynamic>{
      'error': instance.error,
    };

_$_OkAuthResponse _$$_OkAuthResponseFromJson(Map<String, dynamic> json) =>
    _$_OkAuthResponse(
      accessToken: json['access_token'] as String,
      sessionSecretKey: json['session_secret_key'] as String,
      expiresInSeconds: intFromString(json['expires_in'] as String),
    );

Map<String, dynamic> _$$_OkAuthResponseToJson(_$_OkAuthResponse instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'session_secret_key': instance.sessionSecretKey,
      'expires_in': instance.expiresInSeconds,
    };
