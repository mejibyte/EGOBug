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
	NSLog(@"Request to Google finished with code %d. Now loading the image...", aRequest.responseStatusCode);
	[notBuggyImageView setImageURL:[NSURL URLWithString:@"http://static.gowalla.com/kinds/1677-493f38f571bdde3cc08f1f90b20a2373-100.png"]];
	NSLog(@"And it will never load.");
}

- (void)dealloc {
	[buggyImageView release];
	[notBuggyImageView release];
    [super dealloc];
}

@end
