//
//  AppDelegate.m
//  larginView
//
//  Created by Robb Schiller on 11/25/14.
//  Copyright (c) 2014 Robb Schiller. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
	// Override point for customization after application launch.
	
	[[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
	
	// Step 1
	CGRect windowFrame = [UIScreen mainScreen].bounds;
	
	// Step 2
	self.window = [[UIWindow alloc] initWithFrame:windowFrame];
	
	// Step 3
	self.window.rootViewController = [[ViewController alloc] init];
	
	// Step 4
	[self.window makeKeyAndVisible];
	
	return YES;
	
}


@end
