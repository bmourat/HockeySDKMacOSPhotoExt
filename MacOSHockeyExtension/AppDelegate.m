//
//  AppDelegate.m
//  MacOSHockeyExtension
//
//  Created by Murat Baysangurov on 23/11/2018.
//  Copyright © 2018 Murat Baysangurov. All rights reserved.
//

#import "AppDelegate.h"
@import HockeySDK;

@interface AppDelegate ()

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {

  [[BITHockeyManager sharedHockeyManager] setLogLevel:BITLogLevelVerbose];
  [[BITHockeyManager sharedHockeyManager] configureWithIdentifier:@"20e526fb7fa44a8cba5cbb327ecd3695"];
  [[BITHockeyManager sharedHockeyManager] startManager];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
  // Insert code here to tear down your application
}


@end
