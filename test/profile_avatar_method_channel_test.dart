import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:profile_avatar_ts/profile_avatar_method_channel.dart';

void main() {
  MethodChannelProfileAvatar platform = MethodChannelProfileAvatar();
  const MethodChannel channel = MethodChannel('profile_avatar_ts');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
