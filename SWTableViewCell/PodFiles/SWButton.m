//
//  SWButton.m
//  SWButton
//
//  Created by Lunkr on 16/5/12.
//  Copyright © 2016年 Bill. All rights reserved.
//

#import "SWButton.h"

@implementation SWButton

+ (instancetype)buttonWithColor:(UIColor *)color
                     normalIcon:(UIImage *)normalIcon
                          title:(NSString *)title {
    return [self buttonWithColor:color normalIcon:normalIcon selectedIcon:nil titleFont:nil normalTitle:title normalTitleColor:nil selectedTitleColor:nil];
}

+ (instancetype)buttonWithColor:(UIColor *)color
                     normalIcon:(UIImage *)normalIcon
                   selectedIcon:(UIImage *)selectedIcon
                      titleFont:(UIFont *)font
                    normalTitle:(NSString *)normalTitle
               normalTitleColor:(UIColor *)normalTitleColor
             selectedTitleColor:(UIColor *)selectedTitleColor {
    SWButton *btn = [SWButton buttonWithType:UIButtonTypeCustom];
    
    if (normalIcon) {
        [btn setImage:normalIcon forState:UIControlStateNormal];
    }
    if (selectedIcon) {
        [btn setImage:selectedIcon forState:UIControlStateSelected];
        [btn setImage:selectedIcon forState:UIControlStateHighlighted];
    }
    
    btn.titleLabel.font = font?font:[UIFont systemFontOfSize:10];
    
    if (normalTitle) {
        [btn setTitle:normalTitle forState:UIControlStateNormal];
    }
    
    [btn setTitleColor:normalTitleColor?normalTitleColor:[UIColor colorWithRed:0.176 green:0.176 blue:0.176 alpha:1] forState:UIControlStateNormal];
    if (selectedTitleColor) {
        [btn setTitleColor:selectedTitleColor forState:UIControlStateSelected];
        [btn setTitleColor:selectedTitleColor forState:UIControlStateHighlighted];
    }
    
    if (color) {
        [btn setBackgroundColor:color];
    }
    
    return btn;
}


- (CGRect)titleRectForContentRect:(CGRect)contentRect {
    CGRect frame = [super titleRectForContentRect:CGRectMake(0, 0, CGFLOAT_MAX, contentRect.size.height)];
    frame.size.height -= 4;
    
    if (frame.size.width > contentRect.size.width - 8) {
        frame.size.width = contentRect.size.width - 8;
    }
    
    frame.origin.y = contentRect.size.height/2.0 + 8;
    frame.origin.x = (contentRect.size.width - frame.size.width)/2.0;
    
    return frame;
}

- (CGRect)imageRectForContentRect:(CGRect)contentRect {
    CGRect frame = [super imageRectForContentRect:contentRect];
    frame.origin.x = (contentRect.size.width - frame.size.width)/2.0;
    frame.origin.y = contentRect.size.height/2.0 - frame.size.height;
    
    return frame;
}

@end
