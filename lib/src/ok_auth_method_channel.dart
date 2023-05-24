import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'models/models.dart';
import 'ok_auth_helpers.dart';
import 'ok_auth_platform_interface.dart';

/// An implementation of [OkAuthPlatform] that uses method channels.
final class MethodChannelOkAuth extends OkAuthPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('ok_auth');
  final _helpers = OkAuthHelpers();
  @override
  Future<OkAuthResponse> login() async {
    try {
      final dynamicJson = await methodChannel.invokeMethod<Map>(
        'login',
      );
      return _helpers.handleLoginJsonResponse(dynamicJson);
    } on PlatformException catch (e) {
      _helpers.handleLoginPlatformException(e);
      rethrow;
    }
  }
}
