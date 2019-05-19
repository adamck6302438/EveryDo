//
//  ToDoTableViewCell.m
//  Every.Do
//
//  Created by Frances ZiyiFan on 5/14/19.
//  Copyright © 2019 Ray Kang. All rights reserved.
//

#import "ToDoTableViewCell.h"

@interface ToDoTableViewCell()
@property (weak, nonatomic) IBOutlet UIView *priorityIndicator;
@property (weak, nonatomic) IBOutlet UILabel *taskTitle;


@end


@implementation ToDoTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
//    [super setSelected:selected animated:animated];
    // Configure the view for the selected state
}

- (void) setTask: (Todo *)task andPriority: (UIColor *) priority{
    self.task = task;
    self.taskTitle.text = task.title;
    self.priorityIndicator.backgroundColor = priority;
}

- (void)prepareForReuse
{
    [super prepareForReuse];
    self.taskTitle.text = @"Task";
    self.priorityIndicator.backgroundColor = [UIColor clearColor];
}

@end
