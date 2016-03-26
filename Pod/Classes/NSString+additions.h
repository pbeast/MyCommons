//
//  NSString+additions.h
//  AroundMe
//
//  Created by Pavel Yankelevich on 1/17/16.
//  Copyright © 2016 Pavel Yankelevich. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (additions)

-(NSString*)trim;
@property (readonly) BOOL isEmpty;
@property (readonly) BOOL isWhitespaceOrEmpty;
@property (readonly) BOOL isNilOrEmpty;

@end
