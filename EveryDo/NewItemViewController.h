//
//  NewItemViewController.h
//  EveryDo
//
//  Created by Frances ZiyiFan on 5/14/19.
//  Copyright © 2019 Ray Kang. All rights reserved.
//

#import "ViewController.h"
#import "Todo.h"

NS_ASSUME_NONNULL_BEGIN

@protocol NewItemViewControllDelegate <NSObject>

- (void) addInputTaskToList: (Todo *)task;

@end

@interface NewItemViewController : ViewController <UIPageViewControllerDelegate>

@end

NS_ASSUME_NONNULL_END
