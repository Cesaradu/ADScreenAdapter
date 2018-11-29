//
//  ScreenSuit.m
//  ADScreenAdapter
//
//  Created by user on 2018/11/5.
//  Copyright © 2018年 user. All rights reserved.
//

#import "ScreenSuit.h"
#import "ScreenAdapter.h"

@implementation ScreenSuit

/**
 适配 给定375屏字号，适配320和414屏字号
 */
+ (float)suitFont:(float)font {
    IS_WIDTH320 ? (font = font - 1) : (IS_WIDTH414 ? (font = font + 1) : font);
    return font;
}

/*
 宽、高均按屏幕宽的比例缩放
 */
+ (float)suit:(float)value {
    IS_WIDTH320 ? (value = value / Suit320Width) : (IS_WIDTH414 ? (value = value * Suit414Width) : value);
    return value;
}


@end
