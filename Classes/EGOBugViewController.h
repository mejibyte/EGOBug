//
//  EGOBugViewController.h
//  EGOBug
//
//  Created by Andrés Mejía on 20/10/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EGOImageView.h"
#import "EGOHTTPRequest.h"

@interface EGOBugViewController : UIViewController {
	EGOImageView * buggyImageView;
	EGOImageView * notBuggyImageView;
}

@property(nonatomic, retain) EGOImageView * buggyImageView;
@property(nonatomic, retain) EGOImageView * notBuggyImageView;

-(IBAction) buggyClick;
-(IBAction) notBuggyClick;

-(void) requestDidFinish:(EGOHTTPRequest *)aRequest;

@end

