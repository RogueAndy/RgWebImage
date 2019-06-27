//
//  UIButton+ZRButton.m
//  ZRWebImageDemo
//
//  Created by rogue on 2019/1/11.
//  Copyright © 2019 rogue. All rights reserved.
//

#import "UIButton+ZRButton.h"
#import "ZRImageTypedef.h"
#import <SDWebImage/SDWebImage.h>

@implementation UIButton (ZRButton)

- (void)ZRBtn_setImage:(NSString *)url state:(UIControlState)state place:(NSString *)place {
    [self ZRBtn_setImage:url state:state place:place complete:nil];
}

- (void)ZRBtn_setImage:(NSString *)url state:(UIControlState)state place:(NSString *)place complete:(nullable ZRExternalCompletionBlock)complete {
    if(RgWebImage_StringIsEmpty(url)) {
        if(RgWebImage_StringIsEmpty(place)) {
            return;
        }
        [self setImage:[UIImage imageNamed:place] forState:state];
        return;
    }
    NSURL *nsurl = [NSURL URLWithString:url];
    [self sd_setImageWithURL:nsurl forState:state completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
        if(complete) {
            complete(image, error, cacheType, imageURL);
        }
    }];
}

@end
