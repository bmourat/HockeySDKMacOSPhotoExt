//
//  PhotoProjectViewController.m
//  PhotosExt
//
//  Created by Murat Baysangurov on 23/11/2018.
//  Copyright © 2018 Murat Baysangurov. All rights reserved.
//

#import "PhotoProjectViewController.h"
#import "ProjectTypeDescriptionDataSource.h"
#import <PhotosUI/PhotosUI.h>

@import HockeySDK;

@interface PhotoProjectViewController () <PHProjectExtensionController>

@property BOOL didSetupHockeySDK;

@end

@implementation PhotoProjectViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  if (!self.didSetupHockeySDK) {
    [[BITHockeyManager sharedHockeyManager] setLogLevel:BITLogLevelVerbose];
    [[BITHockeyManager sharedHockeyManager] setDisableCrashManager:FALSE];
    [[BITHockeyManager sharedHockeyManager] setDisableMetricsManager:FALSE];
    [[[BITHockeyManager sharedHockeyManager] crashManager] setAutoSubmitCrashReport:TRUE];
    [[BITHockeyManager sharedHockeyManager] configureWithIdentifier:@"20e526fb7fa44a8cba5cbb327ecd3695"];
    [[BITHockeyManager sharedHockeyManager] startManager];
    self.didSetupHockeySDK = true;
  }
}

- (IBAction)crashMe:(id)sender {
  NSArray *array = [NSArray array];
  [array objectAtIndex:23];
}

#pragma mark - PHProjectExtensionController

- (id<PHProjectTypeDescriptionDataSource>)typeDescriptionDataSourceForCategory:(PHProjectCategory)category invalidator:(id<PHProjectTypeDescriptionInvalidator>)invalidator {
    return [[ProjectTypeDescriptionDataSource alloc] init];
}

- (void)beginProjectWithExtensionContext:(PHProjectExtensionContext *)extensionContext projectInfo:(PHProjectInfo *)projectInfo completion:(nonnull void (^)(NSError * ))completion {
    dispatch_async(dispatch_get_main_queue(), ^(void) {
        // do initialization here
        completion(nil);
    });
}

- (void)resumeProjectWithExtensionContext:(PHProjectExtensionContext *)extensionContext completion:(nonnull void (^)(NSError * ))completion {
    dispatch_async(dispatch_get_main_queue(), ^(void) {
        // do initialization here
        completion(nil);
    });
}

- (void)finishProjectWithCompletionHandler:(void (^)(void))completion {
    // do any finalization here
    completion();
}

#pragma mark - Helper

- (PHProjectExtensionContext *)projectExtensionContext {
    return (PHProjectExtensionContext *)self.extensionContext;
}


@end
