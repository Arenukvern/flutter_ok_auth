//
//  Generated file. Do not edit.
//

// clang-format off

#import "GeneratedPluginRegistrant.h"

#if __has_include(<flutter_web_auth_2/FlutterWebAuth2Plugin.h>)
#import <flutter_web_auth_2/FlutterWebAuth2Plugin.h>
#else
@import flutter_web_auth_2;
#endif

#if __has_include(<integration_test/IntegrationTestPlugin.h>)
#import <integration_test/IntegrationTestPlugin.h>
#else
@import integration_test;
#endif

#if __has_include(<ok_auth/OkAuthPlugin.h>)
#import <ok_auth/OkAuthPlugin.h>
#else
@import ok_auth;
#endif

#if __has_include(<url_launcher_ios/FLTURLLauncherPlugin.h>)
#import <url_launcher_ios/FLTURLLauncherPlugin.h>
#else
@import url_launcher_ios;
#endif

@implementation GeneratedPluginRegistrant

+ (void)registerWithRegistry:(NSObject<FlutterPluginRegistry>*)registry {
  [FlutterWebAuth2Plugin registerWithRegistrar:[registry registrarForPlugin:@"FlutterWebAuth2Plugin"]];
  [IntegrationTestPlugin registerWithRegistrar:[registry registrarForPlugin:@"IntegrationTestPlugin"]];
  [OkAuthPlugin registerWithRegistrar:[registry registrarForPlugin:@"OkAuthPlugin"]];
  [FLTURLLauncherPlugin registerWithRegistrar:[registry registrarForPlugin:@"FLTURLLauncherPlugin"]];
}

@end
