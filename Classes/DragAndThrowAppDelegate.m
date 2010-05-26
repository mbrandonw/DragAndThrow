//
//  DragAndThrowAppDelegate.m
//  DragAndThrow
//
//  Created by Brandon Williams on 5/25/10.
//  Copyright Opetopic 2010. All rights reserved.
//

#import "DragAndThrowAppDelegate.h"
#import "DragAndThrowViewController.h"

@implementation DragAndThrowAppDelegate

@synthesize window;
@synthesize viewController;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after app launch    
    [window addSubview:viewController.view];
    [window makeKeyAndVisible];

	return YES;
}


- (void)dealloc {
    [viewController release];
    [window release];
    [super dealloc];
}


@end
