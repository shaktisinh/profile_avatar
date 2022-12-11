#import "ProfileAvatarPlugin.h"
#if __has_include(<profile_avatar_ts/profile_avatar_ts-Swift.h>)
#import <profile_avatar_ts/profile_avatar_ts-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "profile_avatar_ts-Swift.h"
#endif

@implementation ProfileAvatarPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftProfileAvatarPlugin registerWithRegistrar:registrar];
}
@end
