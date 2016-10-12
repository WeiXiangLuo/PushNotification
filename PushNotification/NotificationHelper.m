//
//  NotificationHelper.m
//  PushNotification
//
//  Created by lwx on 16/10/12.
//  Copyright © 2016年 lwx. All rights reserved.
//

#import "NotificationHelper.h"

#define __IOS_BIGGER_8 (([[[UIDevice currentDevice] systemVersion] floatValue]) >= 8)


@implementation NotificationHelper


+ (void)configuration {
    //消息推送注册
    if (__IOS_BIGGER_8) {
        [[UIApplication sharedApplication] registerUserNotificationSettings:[UIUserNotificationSettings settingsForTypes:(UIUserNotificationTypeSound | UIUserNotificationTypeAlert | UIUserNotificationTypeBadge) categories:nil]];
        [[UIApplication sharedApplication] registerForRemoteNotifications];
    }else{
        [[UIApplication sharedApplication] registerForRemoteNotificationTypes:UIRemoteNotificationTypeSound|UIRemoteNotificationTypeAlert|UIRemoteNotificationTypeBadge];
    }
}



+ (void)dealWithDeviceToken:(NSData *)deviceToken {
    NSMutableString *token = [NSMutableString stringWithFormat:@"%@", deviceToken];
    [token deleteCharactersInRange:(NSRange){0,1}];
    [token deleteCharactersInRange:(NSRange){token.length - 1,1}];
//    USERINFO.token = token;
}

+ (void)dealWithFailError:(NSError *)error{
    NSLog(@"Failed to get token, error:%@", error);
}


+ (void)dealWithReceiveInfo:(NSDictionary *)info{
   NSLog(@"Receive remote notification : %@",info);
    NSString *type = info[@"type"];
    if (type) {
        if ([type isEqualToString:@"New_Violations"]) {//新违章
      
        }else if ([type isEqualToString:@"Need_Maintenance"]) {
        
        }
    }
}



@end
