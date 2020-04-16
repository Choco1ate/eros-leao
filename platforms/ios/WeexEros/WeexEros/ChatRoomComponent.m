//
//  ChatRoomComponent.m
//  WeexEros
//
//  Created by leao on 2019/5/22.
//  Copyright © 2019 benmu. All rights reserved.
//

#import "ChatRoomComponent.h"
#import <WeexSDK.h>
#import "BMDefine.h"

@interface ChatRoomComponent()
@property (strong, nonatomic) UIView   *mainView;
@property (copy,   nonatomic) NSString *myAttribute;
@end

@implementation ChatRoomComponent

WX_EXPORT_METHOD(@selector(loginIM))

/**
 自定义添加属性
 */
- (instancetype)initWithRef:(NSString *)ref type:(NSString *)type styles:(NSDictionary *)styles attributes:(NSDictionary *)attributes events:(NSArray *)events weexInstance:(WXSDKInstance *)weexInstance {
    if(self = [super initWithRef:ref type:type styles:styles attributes:attributes events:events weexInstance:weexInstance]) {
        if (attributes[@"myAttribute"]) {
            _myAttribute = [WXConvert NSString: attributes[@"myAttribute"]]; // 自定义属性
        }
    }
    return self;
}

- (UIView *)loadView {
    return _mainView = [[UIView alloc]init];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _mainView = (UIView *)self.view;
    
    _mainView.backgroundColor = [UIColor redColor];
    
    // 给前端发送事件
    [self fireEvent:@"mapLoaded" params:@{@"customKey":@"customValue"} domChanges:nil];
}

- (void)loginIM {
    /*
     channelID = 1130298951074062336;
     clientID = 71d27f5fce45498987dbc5e083d24236;
     openID = 864432322756214786;
     token = 476995b5b2253ef5cab537f5e6e08180;
     userRole = 2;*/
//    NSMutableDictionary *dic = [[NSMutableDictionary alloc]init];
//    [dic setObject:@"1130298951074062336" forKey:@"channelID"];
//    [dic setObject:@"864432322756214786" forKey:@"openID"];
//    [dic setObject:@"71d27f5fce45498987dbc5e083d24236" forKey:@"clientID"];
//    [dic setObject:@(ZDTalkUserRoleTypeCommon) forKey:@"userRole"];
//    [dic setObject:@"476995b5b2253ef5cab537f5e6e08180" forKey:@"token"];

//    [[IZDRequest shareInstance] post:REQUEST_IM_LOGIN params:dic resultModel:[IMUserLoginModel class] success:^(id result) {
//        IMUserLoginModel *model = (IMUserLoginModel *)result;
//
//        UIViewController *VC = TK_CurrentVC();
//        ChatViewController *chatVC = [[ChatViewController alloc]initWithIMLoginModel:model];
//
//        [VC presentViewController:chatVC animated:NO completion:nil];
//    } fail:^(NSError *error) {
//
//    }];
}

// 接收事件
- (void)addEvent:(NSString *)eventName {
    if ([eventName isEqualToString:@"mapLoaded"]) {
        NSLog(@"");
    }
}
@end
