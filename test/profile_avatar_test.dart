import 'package:flutter_test/flutter_test.dart';
import 'package:profile_avatar_ts/profile_avatar_ts.dart';
import 'package:profile_avatar_ts/profile_avatar_platform_interface.dart';
import 'package:profile_avatar_ts/profile_avatar_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockProfileAvatarPlatform
    with MockPlatformInterfaceMixin
    implements ProfileAvatarPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final ProfileAvatarPlatform initialPlatform = ProfileAvatarPlatform.instance;

  test('$MethodChannelProfileAvatar is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelProfileAvatar>());
  });

  test('getPlatformVersion', () async {
    ProfileAvatar profileAvatarPlugin = ProfileAvatar();
    MockProfileAvatarPlatform fakePlatform = MockProfileAvatarPlatform();
    ProfileAvatarPlatform.instance = fakePlatform;

    expect(await profileAvatarPlugin.getPlatformVersion(), '42');
  });
}
