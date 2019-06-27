//
//  UIImageView+ZRImage.m
//  ZRWebImageDemo
//
//  Created by rogue on 2019/1/11.
//  Copyright © 2019 rogue. All rights reserved.
//

#import "UIImageView+ZRImage.h"
#import <SDWebImage/SDWebImage.h>

@implementation UIImageView (ZRImage)

- (void)ZRImg_setImage:(NSString *)url place:(NSString *)place {
    [self ZRImg_setImage:url place:place complete:nil];
}

- (void)ZRImg_setImage:(NSString *)url place:(NSString *)place complete:(nullable ZRExternalCompletionBlock)complete {
    if(RgWebImage_StringIsEmpty(url)) {
        if(RgWebImage_StringIsEmpty(place)) {
            return;
        }
        self.image = [UIImage imageNamed:place];
        return;
    }
    NSURL *nsurl = [NSURL URLWithString:url];
    [self sd_setImageWithURL:nsurl placeholderImage:[UIImage imageNamed:place] completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
        if(complete) {
            complete(image, error, cacheType, imageURL);
        }
    }];
}

@end
