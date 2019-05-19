//
//  Todo.m
//  Every.Do
//
//  Created by Frances ZiyiFan on 5/14/19.
//  Copyright © 2019 Ray Kang. All rights reserved.
//

#import "Todo.h"

@implementation Todo

- (instancetype)initWithTitle: (NSString *)title andPriority: (NSInteger) priority
{
    self = [super init];
    if (self) {
        _title = title;
        _priority = priority;
    }
    return self;
}

@end
