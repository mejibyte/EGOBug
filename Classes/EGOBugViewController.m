//
//  EGOBugViewController.m
//  EGOBug
//
//  Created by Andrés Mejía on 20/10/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "EGOBugViewController.h"

@implementation EGOBugViewController

@synthesize buggyImageView, notBuggyImageView;

- (void) awakeFromNib {
	buggyImageView = [[EGOImageView alloc] initWithPlaceholderImage:[UIImage imageNamed:@"placeholder.png"]];
	buggyImageView.frame = CGRectMake((320 - 71) / 2, 10, 71, 71);
	
	notBuggyImageView = [[EGOImageView alloc] initWithPlaceholderImage:[UIImage imageNamed:@"placeholder.png"]];
	notBuggyImageView.frame = CGRectMake((320 - 71) / 2, 230, 71, 71);
	
	[self.view addSubview:buggyImageView];
	[self.view addSubview:notBuggyImageView];
}


- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}

-(IBAction) buggyClick {
	EGOHTTPRequest * request = [[EGOHTTPRequest alloc] initWithURL:[NSURL URLWithString:@"http://www.google.com"]];
	[request setDelegate:self];
	[request setDidFinishSelector:@selector(requestDidFinish:)];
	[request startAsynchronous];
	[request release];
}

-(IBAction) notBuggyClick {
	[notBuggyImageView setImageURL:[NSURL URLWithString:@"http://static.gowalla.com/kinds/1677-493f38f571bdde3cc08f1f90b20a2373-100.png"]];
}

-(void) requestDidFinish:(EGOHTTPRequest *)aRequest {
	if (aRequest.responseStatusCode == 200){
		NSLog(@"Request to Google finished correctly. Now loading the image...");
		[notBuggyImageView setImageURL:[NSURL URLWithString:@"http://static.gowalla.com/kinds/1677-493f38f571bdde3cc08f1f90b20a2373-100.png"]];
		NSLog(@"And it will never load.");
	}
}

- (void)dealloc {
	[buggyImageView release];
	[notBuggyImageView release];
    [super dealloc];
}

@end
