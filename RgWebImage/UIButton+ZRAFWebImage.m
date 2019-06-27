//
//  UIButton+ZRAFWebImage.m
//  ZRWebImageDemo
//
//  Created by rogue on 2019/1/11.
//  Copyright © 2019 rogue. All rights reserved.
//

#import "UIButton+ZRAFWebImage.h"
#import "UIButton+AFNetworking.h"
#import "ZRImageTypedef.h"

@implementation UIButton (ZRAFWebImage)

- (void)ZRAF_setImageForState:(UIControlState)state withURL:(NSString *)url {
    [self ZRAF_setImageForState:state withURL:url placeholderImage:nil];
}

- (void)ZRAF_setImageForState:(UIControlState)state withURL:(NSString *)url placeholderImage:(nullable NSString *)placeholderImage {
    if(RgWebImage_StringIsEmpty(url)) {
        if(RgWebImage_StringIsEmpty(placeholderImage)) {
            return;
        }
        [self setImage:[UIImage imageNamed:placeholderImage] forState:UIControlStateNormal];
        return;
    }
    [self setImageForState:state withURL:[NSURL URLWithString:url] placeholderImage:[UIImage imageNamed:placeholderImage]];
}

@end
