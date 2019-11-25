#import "GoogleNearbyMessagesApiPlugin.h"
#import <google_nearby_messages_api/google_nearby_messages_api-Swift.h>

@implementation GoogleNearbyMessagesApiPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftGoogleNearbyMessagesApiPlugin registerWithRegistrar:registrar];
}
@end
