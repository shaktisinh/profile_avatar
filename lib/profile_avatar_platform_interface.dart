import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'profile_avatar_method_channel.dart';

abstract class ProfileAvatarPlatform extends PlatformInterface {
  /// Constructs a ProfileAvatarPlatform.
  ProfileAvatarPlatform() : super(token: _token);

  static final Object _token = Object();

  static ProfileAvatarPlatform _instance = MethodChannelProfileAvatar();

  /// The default instance of [ProfileAvatarPlatform] to use.
  ///
  /// Defaults to [MethodChannelProfileAvatar].
  static ProfileAvatarPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ProfileAvatarPlatform] when
  /// they register themselves.
  static set instance(ProfileAvatarPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
