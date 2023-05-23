import 'package:flutter_test/flutter_test.dart';
import 'package:ok_auth/ok_auth.dart';
// import 'package:ok_auth/ok_auth_platform_interface.dart';
// import 'package:ok_auth/ok_auth_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

final class MockOkAuthPlatform
    with MockPlatformInterfaceMixin
    implements OkAuthPlatform {
  @override
  Future<OkAuthResponse> login() {
    // TODO: implement login
    throw UnimplementedError();
  }
}

void main() {
  final OkAuthPlatform initialPlatform = OkAuthPlatform.instance;

  test('$MethodChannelOkAuth is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelOkAuth>());
  });

  test('login', () async {
    final OkAuth okAuthPlugin = OkAuth();
    final MockOkAuthPlatform fakePlatform = MockOkAuthPlatform();
    OkAuthPlatform.instance = fakePlatform;

    expect(await okAuthPlugin.login(), '42');
  });
}
