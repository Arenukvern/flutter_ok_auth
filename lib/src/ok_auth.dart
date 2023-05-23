import 'ok_auth.dart';

export 'models/models.dart';
export 'ok_auth_method_channel.dart';
export 'ok_auth_platform_interface.dart';

class OkAuth {
  Future<OkAuthResponse> login() => OkAuthPlatform.instance.login();
}
