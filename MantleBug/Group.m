//
//  Group.m
//  MantleBug
//
//  Created by Cameron Spickert on 8/5/15.
//  Copyright (c) 2015 Cameron Spickert. All rights reserved.
//

#import "Group.h"
#import "User.h"
#import <Mantle/MTLValueTransformer.h>

@implementation Group

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return @{ @"owner" : @"owner",
              @"users" : @"users" };
}

+ (NSValueTransformer *)ownerJSONTransformer
{
    return [MTLJSONAdapter dictionaryTransformerWithModelClass:[User class]];
}

+ (NSValueTransformer *)usersJSONTransformer
{
    return [MTLJSONAdapter arrayTransformerWithModelClass:[User class]];
}

@end
