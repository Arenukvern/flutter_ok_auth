// ignore_for_file: invalid_annotation_target

part of 'models.dart';

/// https://apiok.ru/ext/oauth/client
@freezed
class OkAuthErrorException with _$OkAuthErrorException implements Exception {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
  )
  @Implements<Exception>()
  const factory OkAuthErrorException({
    // ignore: avoid_annotating_with_dynamic
    final dynamic error,
  }) = _OkAuthErrorException;
  factory OkAuthErrorException.fromJson(final Map<String, dynamic> json) =>
      _$OkAuthErrorExceptionFromJson(json);
}
