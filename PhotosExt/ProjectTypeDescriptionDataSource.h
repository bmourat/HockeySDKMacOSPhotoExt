//
//  ProjectTypeDescriptionDataSource.h
//  PhotosExt
//
//  Created by Murat Baysangurov on 23/11/2018.
//  Copyright © 2018 Murat Baysangurov. All rights reserved.
//

#import <PhotosUI/PhotosUI.h>

NS_ASSUME_NONNULL_BEGIN

@interface ProjectTypeDescriptionDataSource : NSObject <PHProjectTypeDescriptionDataSource>
@property (nonatomic, readonly, class) NSArray<PHProjectTypeDescription *> *rootLevelProjectTypes;
@end

NS_ASSUME_NONNULL_END
