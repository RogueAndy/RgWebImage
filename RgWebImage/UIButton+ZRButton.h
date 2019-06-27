//
//  UIButton+ZRButton.h
//  ZRWebImageDemo
//
//  Created by rogue on 2019/1/11.
//  Copyright © 2019 rogue. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ZRImageTypedef.h"

NS_ASSUME_NONNULL_BEGIN

/**
 SDWebImage 里的 Button 组件
 */
@interface UIButton (ZRButton)

- (void)ZRBtn_setImage:(NSString *)url state:(UIControlState)state place:(NSString *)place;

- (void)ZRBtn_setImage:(NSString *)url state:(UIControlState)state place:(NSString *)place complete:(nullable ZRExternalCompletionBlock)complete;

@end

NS_ASSUME_NONNULL_END
