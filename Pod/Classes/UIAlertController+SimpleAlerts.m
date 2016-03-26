//
//  UIAlertController+SimpleAlerts.m
//  CustomMapPinsPOC
//
//  Created by Pavel Yankelevich on 1/15/16.
//  Copyright © 2016 Pavel Yankelevich. All rights reserved.
//

#import "UIAlertController+SimpleAlerts.h"

@implementation UIAlertController (SimpleAlerts)

+(UIAlertController*) okCancelWithTitle:(NSString*)title andMessage:(NSString*)message completion:(void(^)(BOOL canceled))completion{
    UIAlertController* controller = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];

    UIAlertAction* okAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"OK", @"OK") style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        if (completion != nil)
            completion(NO);
    }];
    
    [controller addAction:okAction];
    
    UIAlertAction* cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"Cancel", @"Cancel") style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        if (completion != nil)
            completion(YES);
    }];
    
    [controller addAction:cancelAction];
    
    return controller;
}

+(UIAlertController*) yesNoWithTitle:(NSString*)title andMessage:(NSString*)message completion:(void(^)(BOOL answer))completion{
    UIAlertController* controller = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* okAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"Yes", @"YES") style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        if (completion != nil)
            completion(YES);
    }];
    
    [controller addAction:okAction];
    
    UIAlertAction* cancelAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"No", @"No") style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        if (completion != nil)
            completion(NO);
    }];
    
    [controller addAction:cancelAction];
    
    return controller;
}

+(UIAlertController*) okWithTitle:(NSString*)title andMessage:(NSString*)message completion:(void(^)())completion{
    UIAlertController* controller = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* okAction = [UIAlertAction actionWithTitle:NSLocalizedString(@"OK", @"OK") style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        if (completion != nil)
            completion();
    }];
    
    [controller addAction:okAction];
    
    return controller;
}

@end
