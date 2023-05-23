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
    final json = await methodChannel.invokeMethod<Map<String, dynamic>>(
      'login',
    );
    if (json == null) throw const OkAuthErrorException();
    if (json.containsKey('error')) {
      throw OkAuthErrorException.fromJson(json);
    }
    return OkAuthResponse.fromJson(json);
  }
}
