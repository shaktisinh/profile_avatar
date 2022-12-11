import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'profile_avatar_platform_interface.dart';

/// An implementation of [ProfileAvatarPlatform] that uses method channels.
class MethodChannelProfileAvatar extends ProfileAvatarPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('profile_avatar');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
