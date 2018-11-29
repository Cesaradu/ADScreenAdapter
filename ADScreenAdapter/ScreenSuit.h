//
//  ScreenSuit.h
//  ADScreenAdapter
//
//  Created by user on 2018/11/5.
//  Copyright © 2018年 user. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ScreenSuit : NSObject

/**
 适配字号
 给定375屏字号，适配320和414屏字号
*/
+ (float)suitFont:(float)font;

/*
 宽、高均按屏幕宽的比例缩放
 */
+ (float)suit:(float)value;


@end

NS_ASSUME_NONNULL_END
