//
//  ToDoTableViewCell.h
//  Every.Do
//
//  Created by Frances ZiyiFan on 5/14/19.
//  Copyright © 2019 Ray Kang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Todo.h"

NS_ASSUME_NONNULL_BEGIN

@interface ToDoTableViewCell : UITableViewCell

@property (nonatomic, strong) Todo *task;
- (void) setTask: (Todo *)task andPriority: (UIColor *) priority;

@end

NS_ASSUME_NONNULL_END
