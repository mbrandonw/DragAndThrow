//
//  DragAndThrowAppDelegate.h
//  DragAndThrow
//
//  Created by Brandon Williams on 5/25/10.
//  Copyright Opetopic 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DragAndThrowViewController;

@interface DragAndThrowAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    DragAndThrowViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet DragAndThrowViewController *viewController;

@end

