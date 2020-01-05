#import <Flutter/Flutter.h>
#import <GNSMessages.h>

GNSMessageManager *messageManager =
    [[GNSMessageManager alloc] initWithAPIKey:kMyAPIKey];

@interface GoogleNearbyMessagesApiPlugin : NSObject<FlutterPlugin>
@end
