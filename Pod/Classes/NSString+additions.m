//
//  NSString+additions.m
//  AroundMe
//
//  Created by Pavel Yankelevich on 1/17/16.
//  Copyright © 2016 Pavel Yankelevich. All rights reserved.
//

#import "NSString+additions.h"

@implementation NSString (additions)

-(NSString*)trim{
    return [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
}

-(BOOL)isEmpty{
    return [self isEqualToString:@""];
}

-(BOOL)isWhitespaceOrEmpty{
    return [[self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] isEqualToString:@""];
}

-(BOOL)isNilOrEmpty{
    return (self == nil) || [self isEqualToString:@""];
}

@end
