//
//  iPhoneExampleAppDelegate.h
//  iPhoneExample
//
//  Created by Jeff Smith on 10-09-21.
//  Copyright Home 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class iPhoneExampleViewController;

@interface iPhoneExampleAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    iPhoneExampleViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet iPhoneExampleViewController *viewController;


@end

