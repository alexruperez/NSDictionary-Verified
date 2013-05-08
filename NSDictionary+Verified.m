//
//  NSDictionary+Verified.m
//
//  Created by alexruperez on 08/05/13.
//  Copyright (c) 2013 alexruperez. All rights reserved.
//

#import "NSDictionary+Verified.h"

@implementation NSDictionary (Verified)

- (id)verifiedObjectForKey:(id)aKey
{
    if ([self objectForKey:aKey] && ![[self objectForKey:aKey] isKindOfClass:[NSNull class]]) return [self objectForKey:aKey];
    return nil;
}

@end
