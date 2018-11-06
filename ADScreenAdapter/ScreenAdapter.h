//
//  ScreenAdapter.h
//  ADScreenAdapter
//
//  Created by user on 2018/11/5.
//  Copyright © 2018年 user. All rights reserved.
//

#ifndef ScreenAdapter_h
#define ScreenAdapter_h

//屏幕宽高
#define ScreenHeight    [[UIScreen mainScreen] bounds].size.height
#define ScreenWidth     [[UIScreen mainScreen] bounds].size.width

/**
 宽度适配，以4.7寸屏幕为基准
 总共三种尺寸，320，375，414
 */
#define Suit320Width            375/320
#define Suit414Width            414/375

/**
 高度适配，以4.7寸屏幕为基准
 总共五种尺寸，568，667，736，812，896
 */
#define Suit568Height           667/568
#define Suit736Height           736/667
#define Suit812Height           812/667
#define Suit896Height           896/667

// 系统判定
#define IOS_VERSION    [[[UIDevice currentDevice] systemVersion] floatValue]
#define IS_IOS8        (IOS_VERSION >= 8.0 && IOS_VERSION < 9.0)
#define IS_IOS9        (IOS_VERSION >= 9.0 && IOS_VERSION < 10.0)
#define IS_IOS10       (IOS_VERSION >= 10.0 && IOS_VERSION < 11.0)
#define IS_IOS11       (IOS_VERSION >= 11.0 && IOS_VERSION < 12.0)
#define IS_IOS12       (IOS_VERSION >= 12.0)

// 屏幕判定（最低5）
#define IS_IPHONE4INCH      (ScreenHeight == 568 ? YES : NO)//5，se
#define IS_IPHONE47INCH     (ScreenHeight == 667 ? YES : NO)//6, 7，8
#define IS_IPHONE55INCH     (ScreenHeight == 736 ? YES : NO)//6,7,8 plus
#define IS_IPHONE58INCH     (ScreenHeight == 812 ? YES : NO)//x, xs
#define IS_IPHONE6INCH      (ScreenHeight == 896 ? YES : NO)//xr, xs max

//屏宽
#define IS_WIDTH320     (IS_IPHONE4INCH ? YES : NO)
#define IS_WIDTH375     ((IS_IPHONE47INCH || IS_IPHONE58INCH) ? YES : NO)
#define IS_WIDTH414     ((IS_IPHONE55INCH || IS_IPHONE6INCH) ? YES : NO)

//屏高
#define IS_HEIGHT568     (IS_IPHONE4INCH ? YES : NO)
#define IS_HEIGHT667     (IS_IPHONE47INCH ? YES : NO)
#define IS_HEIGHT736     (IS_IPHONE55INCH ? YES : NO)
#define IS_HEIGHT812     (IS_IPHONE58INCH ? YES : NO)
#define IS_HEIGHT896     (IS_IPHONE6INCH ? YES : NO)

// naviBar, statusBar, tabBar
#define IS_SPECIALHEIGHTBAR         ((IS_IPHONE58INCH || IS_IPHONE6INCH) ? YES : NO)
#define HEIGHT_STATUSBAR            (IS_SPECIALHEIGHTBAR ? 44 : 20)
#define HEIGHT_TABBAR               (IS_SPECIALHEIGHTBAR ? 83 : 49)
#define HEIGHT_NAVBAR               (IS_SPECIALHEIGHTBAR ? 88 : 64)

#endif /* ScreenAdapter_h */
