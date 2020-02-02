//
//  NSString+additions.h
//  AroundMe
//
//  Created by Pavel Yankelevich on 1/17/16.
//  Copyright © 2016 Pavel Yankelevich. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (additions)

+ (NSString*) uniqueString;
- (NSString*) urlEncodedString;
- (NSString*) urlDecodedString;
- (NSString*) jsonReady;
-(NSString*)trim;

@property (readonly) BOOL isEmpty;
@property (readonly) BOOL isWhitespaceOrEmpty;
@property (readonly) BOOL isNilOrEmpty;
@property (readonly) NSString* localized;

@end
