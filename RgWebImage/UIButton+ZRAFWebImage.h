//
//  UIButton+ZRAFWebImage.h
//  ZRWebImageDemo
//
//  Created by rogue on 2019/1/11.
//  Copyright © 2019 rogue. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

/**
 AFNetworking 里面的 button 分类组件
 */
@interface UIButton (ZRAFWebImage)

- (void)ZRAF_setImageForState:(UIControlState)state withURL:(NSString *)url;

- (void)ZRAF_setImageForState:(UIControlState)state withURL:(NSString *)url placeholderImage:(nullable NSString *)placeholderImage;

@end

NS_ASSUME_NONNULL_END
