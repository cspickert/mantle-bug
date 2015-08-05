//
//  User.m
//  MantleBug
//
//  Created by Cameron Spickert on 8/5/15.
//  Copyright (c) 2015 Cameron Spickert. All rights reserved.
//

#import "User.h"
#import "Group.h"
#import <Mantle/MTLValueTransformer.h>

@implementation User

+ (NSDictionary *)JSONKeyPathsByPropertyKey
{
    return @{ @"name" : @"name",
              @"groups" : @"groups" };
}

+ (NSValueTransformer *)groupsJSONTransformer
{
    return [MTLJSONAdapter arrayTransformerWithModelClass:[Group class]];
}

@end
