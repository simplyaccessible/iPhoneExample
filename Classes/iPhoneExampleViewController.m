//
//  iPhoneExampleViewController.m
//  iPhoneExample
//
//  Created by Jeff Smith on 10-09-21.
//  Copyright Home 2010. All rights reserved.
//

#import "iPhoneExampleViewController.h"

@implementation iPhoneExampleViewController

@synthesize button;
@synthesize label;
@synthesize myView;

/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/


// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
	// create and configure the view
	CGRect cgRct = CGRectMake(0.0, 0.0, 480, 320); //define size and position of view 
	myView = [[UIView alloc] initWithFrame:cgRct]; //initialize the view    
	myView.autoresizesSubviews = YES;              //allow it to tweak size of elements in view 
	self.view = myView;        

	// create a UIButton (UIButtonTypeRoundedRect) and play arround with settings
	button = [UIButton buttonWithType:UIButtonTypeRoundedRect];    
	button.frame = CGRectMake(100, 100, 100, 50); // size and position of button
	[button setTitle:@"Add" forState:UIControlStateNormal];
	button.backgroundColor = [UIColor clearColor];
	button.adjustsImageWhenHighlighted = YES;     

	//Add action handler and set current class as target
	[button addTarget:self action:@selector(action:) forControlEvents:UIControlEventTouchUpInside];

	//Display Button
	[self.view addSubview:button];

	//create a label
	cgRct = CGRectMake(100, 170, 100, 50); //define size and position of label
	label = [[UILabel alloc] initWithFrame:cgRct];
	label.text = @"Hello World";

	//Display Label
	[self.view addSubview:label];
}

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

 -(void)action:(id)sender {
	NSLog(@"UIButton was clicked");
	label.text = @"Bye World";
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


- (void)dealloc {
    [super dealloc];
}

@end
