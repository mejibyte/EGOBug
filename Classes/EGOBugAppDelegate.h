#import <UIKit/UIKit.h>

@class EGOBugViewController;

@interface EGOBugAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    EGOBugViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet EGOBugViewController *viewController;

@end

