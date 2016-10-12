//
//  NotificationHelper.h
//  PushNotification
//
//  Created by lwx on 16/10/12.
//  Copyright © 2016年 lwx. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface NotificationHelper : NSObject


/**
 *  注册推送方法
 */
+ (void)configuration;




+ (void)dealWithDeviceToken:(NSData *)deviceToken;

+ (void)dealWithFailError:(NSError *)error;

+ (void)dealWithReceiveInfo:(NSDictionary *)info;


@end
