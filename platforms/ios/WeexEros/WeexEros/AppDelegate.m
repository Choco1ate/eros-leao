//
//  AppDelegate.m
//  WeexEros
//
//  Created by XHY on 2017/8/7.
//  Copyright © 2017年 Byte Master. All rights reserved.
//

#import "AppDelegate.h"
#import <WXSDKEngine.h>
#import "ChatRoomComponent.h"
#import "YDCalendar.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    BOOL result = [super application:application didFinishLaunchingWithOptions:launchOptions];
    
    //do something
    
    NSDictionary *components = @{@"chatView":          NSStringFromClass([ChatRoomComponent class]),
                                 @"calendar":          NSStringFromClass([YDCalendar class])
                                 };
    for (NSString *componentName in components) {
        [WXSDKEngine registerComponent:componentName withClass:NSClassFromString([components valueForKey:componentName])];
    }

    return result;
}

#pragma mark - 屏幕旋转
- (UIInterfaceOrientationMask)application:(UIApplication *)application supportedInterfaceOrientationsForWindow:(nullable UIWindow *)window{
    if (_appRotation == 0) {
        return (UIInterfaceOrientationMaskPortrait);
    }else  if (_appRotation == AppAllowRotation_Landscape) {
        return UIInterfaceOrientationMaskLandscape;
    }
    return UIInterfaceOrientationMaskAllButUpsideDown;
    
}
@end
