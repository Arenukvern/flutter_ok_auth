// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OkAuthErrorException _$$_OkAuthErrorExceptionFromJson(
        Map<String, dynamic> json) =>
    _$_OkAuthErrorException(
      error: json['error'],
    );

Map<String, dynamic> _$$_OkAuthErrorExceptionToJson(
        _$_OkAuthErrorException instance) =>
    <String, dynamic>{
      'error': instance.error,
    };

_$_OkAuthResponse _$$_OkAuthResponseFromJson(Map<String, dynamic> json) =>
    _$_OkAuthResponse(
      accessToken: json['access_token'] as String,
      sessionSecretKey: json['session_secret_key'] as String,
      expiresInSeconds: json['expires_in'] as int,
    );

Map<String, dynamic> _$$_OkAuthResponseToJson(_$_OkAuthResponse instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'session_secret_key': instance.sessionSecretKey,
      'expires_in': instance.expiresInSeconds,
    };
