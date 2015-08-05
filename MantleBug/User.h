//
//  User.h
//  MantleBug
//
//  Created by Cameron Spickert on 8/5/15.
//  Copyright (c) 2015 Cameron Spickert. All rights reserved.
//

#import <Mantle/MTLModel.h>
#import <Mantle/MTLJSONAdapter.h>

@interface User : MTLModel <MTLJSONSerializing>

@property (nonatomic, copy, readonly) NSString *name;
@property (nonatomic, copy, readonly) NSArray *groups;

@end
