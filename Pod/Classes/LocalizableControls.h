//
//  UILabel_Localized.h
//  LocalizedLabel
//
//  Created by Pavel Yankelevich on 5/2/17.
//  Copyright © 2017 Pavel Yankelevich. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (LocalizableControls)

@property IBInspectable NSString* LocKey;

@end

@interface UITextField (LocalizableControls)

@property IBInspectable NSString* LocKey;
@property IBInspectable NSString* LocPlaceholderKey;

@end

@interface UIButton (LocalizableControls)

@property IBInspectable NSString* LocTitleKey;

@end
