// ignore_for_file: invalid_annotation_target

part of 'models.dart';

/// https://apiok.ru/ext/oauth/client
@freezed
sealed class OkAuthException with _$OkAuthException implements Exception {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
  )
  @Implements<Exception>()
  const factory OkAuthException.error({
    // ignore: avoid_annotating_with_dynamic
    final dynamic error,
  }) = OkAuthErrorException;
  @Implements<Exception>()
  const factory OkAuthException.cancel({
    // ignore: avoid_annotating_with_dynamic
    final dynamic error,
  }) = OkAuthCancelException;
  // ignore: prefer_constructors_over_static_methods
  static OkAuthErrorException errorFromJson(final Map<String, dynamic> json) =>
      OkAuthErrorException(error: json);
}
