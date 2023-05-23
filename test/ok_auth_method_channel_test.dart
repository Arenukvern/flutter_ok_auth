import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ok_auth/ok_auth.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  final MethodChannelOkAuth platform = MethodChannelOkAuth();
  const MethodChannel channel = MethodChannel('ok_auth');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(
      channel,
      (final methodCall) async => '42',
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, null);
  });

  // test('getPlatformVersion', () async {
  //   expect(await platform.getPlatformVersion(), '42');
  // });
}
