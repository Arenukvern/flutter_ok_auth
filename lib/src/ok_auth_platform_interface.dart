import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'models/models.dart';
import 'ok_auth_method_channel.dart';

abstract class OkAuthPlatform extends PlatformInterface {
  /// Constructs a OkAuthPlatform.
  OkAuthPlatform() : super(token: _token);

  static final Object _token = Object();

  static OkAuthPlatform _instance = MethodChannelOkAuth();

  /// The default instance of [OkAuthPlatform] to use.
  ///
  /// Defaults to [MethodChannelOkAuth].
  static OkAuthPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [OkAuthPlatform] when
  /// they register themselves.
  static set instance(final OkAuthPlatform instance) {
    PlatformInterface.verify(instance, _token);
    _instance = instance;
  }

  Future<OkAuthResponse> login() {
    throw UnimplementedError('login() has not been implemented.');
  }
}
