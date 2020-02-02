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

-(NSString*) localized{
    return NSLocalizedString(self, nil);
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

+ (NSString*) uniqueString
{
    CFUUIDRef	uuidObj = CFUUIDCreate(nil);
    NSString	*uuidString = (__bridge_transfer NSString*)CFUUIDCreateString(nil, uuidObj);
    CFRelease(uuidObj);
    return uuidString;
}

- (NSString*) jsonReady {
    return [[[self    stringByReplacingOccurrencesOfString:@"׳" withString:@"\\׳"]
             stringByReplacingOccurrencesOfString:@"'" withString:@"\\'"]
            stringByReplacingOccurrencesOfString:@"\"" withString:@"\\\"" ] ;
}

- (NSString*) urlEncodedString {
    
    CFStringRef encodedCFString = CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault,
                                                                          (__bridge CFStringRef) self,
                                                                          nil,
                                                                          CFSTR("?!@#$^&%*+,:;='\"`׳<>()[]{}/\\| "),
                                                                          kCFStringEncodingUTF8);
    
    NSString *encodedString = [[NSString alloc] initWithString:(__bridge_transfer NSString*) encodedCFString];
    
    if(!encodedString)
        encodedString = @"";
    
    return encodedString;
}

- (NSString*) urlDecodedString {
    
    CFStringRef decodedCFString = CFURLCreateStringByReplacingPercentEscapesUsingEncoding(kCFAllocatorDefault,
                                                                                          (__bridge CFStringRef) self,
                                                                                          CFSTR(""),
                                                                                          kCFStringEncodingUTF8);
    
    // We need to replace "+" with " " because the CF method above doesn't do it
    NSString *decodedString = [[NSString alloc] initWithString:(__bridge_transfer NSString*) decodedCFString];
    return (!decodedString) ? @"" : [decodedString stringByReplacingOccurrencesOfString:@"+" withString:@" "];
}

@end
