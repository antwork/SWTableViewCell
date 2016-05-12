//
//  SWButton.h
//  SWButton
//
//  Created by Lunkr on 16/5/12.
//  Copyright © 2016年 Bill. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SWButton : UIButton

+ (instancetype)buttonWithColor:(UIColor *)color
                     normalIcon:(UIImage *)normalIcon
                          title:(NSString *)title;

+ (instancetype)buttonWithColor:(UIColor *)color
                     normalIcon:(UIImage *)normalIcon
                   selectedIcon:(UIImage *)selectedIcon
                      titleFont:(UIFont *)font
                    normalTitle:(NSString *)normalTitle
               normalTitleColor:(UIColor *)normalTitleColor
             selectedTitleColor:(UIColor *)selectedTitleColor;

@end
