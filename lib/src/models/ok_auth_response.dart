// ignore_for_file: invalid_annotation_target

part of 'models.dart';

/// https://apiok.ru/ext/oauth/client
@freezed
class OkAuthResponse with _$OkAuthResponse {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
  )
  const factory OkAuthResponse({
    required final String accessToken,
    required final String sessionSecretKey,
    @JsonKey(name: 'expires_in') required final int expiresInSeconds,
  }) = _OkAuthResponse;
  factory OkAuthResponse.fromJson(final Map<String, dynamic> json) =>
      _$OkAuthResponseFromJson(json);
}
