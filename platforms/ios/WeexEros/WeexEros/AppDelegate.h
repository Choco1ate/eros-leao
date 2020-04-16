//
//  AppDelegate.h
//  WeexEros
//
//  Created by XHY on 2017/8/7.
//  Copyright © 2017年 Byte Master. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <ErosPluginBaseLibrary/BMAppDelegate.h>

typedef NS_ENUM(NSInteger, AppRotation) {
    AppAllowRotation_Portrait = 0,//默认从0开始
    AppAllowRotation_AllButUpsideDown,//
    AppAllowRotation_Landscape,//左右
};

@interface AppDelegate : BMAppDelegate
@property (assign, nonatomic) AppRotation appRotation;
@end

