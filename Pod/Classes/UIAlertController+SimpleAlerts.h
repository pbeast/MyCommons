//
//  UIAlertController+SimpleAlerts.h
//  CustomMapPinsPOC
//
//  Created by Pavel Yankelevich on 1/15/16.
//  Copyright © 2016 Pavel Yankelevich. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIAlertController (SimpleAlerts)

+(UIAlertController*) okCancelWithTitle:(NSString*)title andMessage:(NSString*)message completion:(void(^)(BOOL canceled))completion;
+(UIAlertController*) yesNoWithTitle:(NSString*)title andMessage:(NSString*)message completion:(void(^)(BOOL answer))completion;
+(UIAlertController*) okWithTitle:(NSString*)title andMessage:(NSString*)message completion:(void(^)())completion;

@end
