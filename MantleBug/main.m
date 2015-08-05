//
//  main.m
//  MantleBug
//
//  Created by Cameron Spickert on 8/5/15.
//  Copyright (c) 2015 Cameron Spickert. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Mantle/MTLJSONAdapter.h>
#import "Group.h"
#import "User.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSDictionary *dictionary = @{
            @"owner" : @{ @"name" : @"Cameron" },
            @"users" : @[
                @{ @"name" : @"Dimitri" },
                @{ @"name" : @"John" }
            ]
        };

        NSError *error = nil;
        Group *group = [MTLJSONAdapter modelOfClass:[Group class] fromJSONDictionary:dictionary error:&error];
        if (group == nil) {
            NSLog(@"Error creating Group object: %@", error);
            return 1;
        }

        NSLog(@"Owner: %@", group.owner.name);

        for (User *user in group.users) {
            NSLog(@"Member: %@", user.name);
        }
    }
    return 0;
}
