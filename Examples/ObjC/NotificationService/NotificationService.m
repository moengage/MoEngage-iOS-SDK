#import "NotificationService.h"
#import <MORichNotification/MORichNotification.h>



@interface NotificationService ()

@property (nonatomic, strong) void (^contentHandler)(UNNotificationContent *contentToDeliver);
@property (nonatomic, strong) UNMutableNotificationContent *bestAttemptContent;

@end

@implementation NotificationService

- (void)didReceiveNotificationRequest:(UNNotificationRequest *)request withContentHandler:(void (^)(UNNotificationContent * _Nonnull))contentHandler {
    @try {
        
        //TODO: Add your App Group ID
        [MORichNotification setAppGroupID:@"Your App Group ID"];
        
        self.contentHandler = contentHandler;
        self.bestAttemptContent = [request.content mutableCopy];
        
        // Handle Rich Notification
        [MORichNotification handleRichNotificationRequest:request withContentHandler:contentHandler];
        
    } @catch (NSException *exception) {
        NSLog(@"MoEngage : exception : %@",exception);
    }
}


/// Save the image to disk

- (void)serviceExtensionTimeWillExpire {
    // Called just before the extension will be terminated by the system.
    // Use this as an opportunity to deliver your "best attempt" at modified content, otherwise the original push payload will be used.
    self.contentHandler(self.bestAttemptContent);
}



@end
