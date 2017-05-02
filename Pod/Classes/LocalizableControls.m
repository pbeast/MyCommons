//
//  UILabel_Localized.m
//  LocalizedLabel
//
//  Created by Pavel Yankelevich on 5/2/17.
//  Copyright © 2017 Pavel Yankelevich. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "LocalizableControls.h"

@implementation UILabel (LocalizableControls)

-(NSString*) LocKey{
    return self.text;
}

-(void) setLocKey:(NSString *)LocKey{
    
    self.text = NSLocalizedString(LocKey, "");
}

@end

@implementation UITextField (LocalizableControls)

-(NSString*) LocKey{
    return self.text;
}

-(void) setLocKey:(NSString *)LocKey{
    
    self.text = NSLocalizedString(LocKey, "");
}

-(NSString*) LocPlaceholderKey{
    
    return self.placeholder;
}

-(void) setLocPlaceholderKey:(NSString *)LocPlaceholderKey{
    
    self.placeholder = NSLocalizedString(LocPlaceholderKey, "");
}

@end

@implementation UIButton (LocalizableControls)

-(NSString*) LocTitleKey{
    return self.titleLabel.text;
}

-(void) setLocTitleKey:(NSString *)LocTitleKey{
    [self setTitle:NSLocalizedString(LocTitleKey, "") forState:UIControlStateNormal];
}

@end
