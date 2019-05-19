//
//  Todo.h
//  Every.Do
//
//  Created by Frances ZiyiFan on 5/14/19.
//  Copyright © 2019 Ray Kang. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Todo : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, assign) NSInteger priority;
@property (nonatomic, assign) BOOL isCompleted;

- (instancetype)initWithTitle: (NSString *)title andPriority: (NSInteger) priority;

@end

NS_ASSUME_NONNULL_END
