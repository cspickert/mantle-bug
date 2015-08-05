//
//  Group.h
//  MantleBug
//
//  Created by Cameron Spickert on 8/5/15.
//  Copyright (c) 2015 Cameron Spickert. All rights reserved.
//

#import <Mantle/MTLModel.h>
#import <Mantle/MTLJSONAdapter.h>

@class User;

@interface Group : MTLModel <MTLJSONSerializing>

@property (nonatomic, readonly) User *owner;
@property (nonatomic, readonly) NSArray *users;

@end
