//
//  ZRImageTypedef.h
//  ZRWebImageDemo
//
//  Created by rogue on 2019/1/11.
//  Copyright © 2019 rogue. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <SDWebImage/SDWebImage.h>

NS_ASSUME_NONNULL_BEGIN

// 判断字符串是否为空
#define RgWebImage_StringIsEmpty(str) ([str isKindOfClass:[NSNull class]] || str == nil || [str length] < 1 || [[str stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] length] < 1 ? YES : NO )

typedef void(^ZRExternalCompletionBlock)(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL);

@interface ZRImageTypedef : NSObject

@end

NS_ASSUME_NONNULL_END
