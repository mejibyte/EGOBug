//
//  EGOBugAppDelegate.h
//  EGOBug
//
//  Created by Andrés Mejía on 20/10/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class EGOBugViewController;

@interface EGOBugAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    EGOBugViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet EGOBugViewController *viewController;

@end

