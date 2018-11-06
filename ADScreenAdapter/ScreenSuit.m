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

/*
 宽、高分别按照各个屏幕宽高比例缩放
 */
//适配宽
+ (float)suitWidth:(float)width {
    IS_WIDTH320 ? (width = width / Suit320Width) : (IS_WIDTH414 ? (width = width * Suit414Width) : width);
    return width;
}

//适配高
+ (float)suitHeight:(float)height {
    IS_HEIGHT568 ? (height = height / Suit568Height) : (IS_HEIGHT736 ? (height = height * Suit736Height) : (IS_HEIGHT812 ? (height = height * Suit812Height) : (IS_HEIGHT896 ? (height = height * Suit896Height) : height)));
    return height;
}

@end
