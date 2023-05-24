import 'dart:io';

import 'ok_auth.dart';
import 'ok_auth_ios_webview.dart';

export 'models/models.dart';
export 'ok_auth_method_channel.dart';
export 'ok_auth_platform_interface.dart';

class OkAuth {
  /// [appId] is used to identify the application for iOS WebView
  Future<OkAuthResponse> login({
    final String appId = '',
  }) {
    if (Platform.isIOS) {
      assert(appId.isNotEmpty, 'appId is required for iOS');
      return OkAuthIosImpl().login(appId: appId);
    }
    return OkAuthPlatform.instance.login();
  }
}
