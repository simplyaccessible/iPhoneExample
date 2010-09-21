//
//  iPhoneExampleViewController.h
//  iPhoneExample
//
//  Created by Jeff Smith on 10-09-21.
//  Copyright Home 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface iPhoneExampleViewController : UIViewController {
	IBOutlet UIButton *button;
	IBOutlet UILabel *label;
	IBOutlet UIView *myView;
}

 -(IBAction)handleEvent:(id)sender;
@property (nonatomic, retain) UIButton *button;
@property (nonatomic, retain) UILabel *label;
@property (nonatomic, retain) UIView *myView;

@end

