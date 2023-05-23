import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'models/models.dart';
import 'ok_auth_platform_interface.dart';

/// An implementation of [OkAuthPlatform] that uses method channels.
final class MethodChannelOkAuth extends OkAuthPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('ok_auth');

  @override
  Future<OkAuthResponse> login() async {
    try {
      final dynamicJson = await methodChannel.invokeMethod<Map>(
        'login',
      );
      if (dynamicJson == null) throw const OkAuthErrorException();
      final json = Map.castFrom<dynamic, dynamic, String, dynamic>(dynamicJson);
      if (dynamicJson.containsKey('error')) {
        throw OkAuthException.errorFromJson(json);
      }
      return OkAuthResponse.fromJson(json);
    } on PlatformException catch (e) {
      switch (e.code) {
        case 'error':
          throw OkAuthException.errorFromJson(
            {
              'message': e.message,
              'details': e.details,
            },
          );
        case 'cancel':
          throw const OkAuthCancelException();
      }
      switch (e.details) {
        case 'access_denied':
          throw const OkAuthCancelException();
      }
      rethrow;
    }
  }
}
