#import "GoogleNearbyMessagesApiPlugin.h"
#import <google_nearby_messages_api/google_nearby_messages_api-Swift.h>
#import <GNSMessages.h>

GNSMessageManager *messageManager =
    [[GNSMessageManager alloc] initWithAPIKey:kMyAPIKey];

@implementation GoogleNearbyMessagesApiPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftGoogleNearbyMessagesApiPlugin registerWithRegistrar:registrar];
}
@end
