//
//  UIImageView+ZRImage.h
//  ZRWebImageDemo
//
//  Created by rogue on 2019/1/11.
//  Copyright © 2019 rogue. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZRImageTypedef.h"

NS_ASSUME_NONNULL_BEGIN

@interface UIImageView (ZRImage)

- (void)ZRImg_setImage:(NSString *)url place:(NSString *)place;

- (void)ZRImg_setImage:(NSString *)url place:(NSString *)place complete:(nullable ZRExternalCompletionBlock)complete;

@end

NS_ASSUME_NONNULL_END
