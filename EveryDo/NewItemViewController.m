//
//  NewItemViewController.m
//  EveryDo
//
//  Created by Frances ZiyiFan on 5/14/19.
//  Copyright © 2019 Ray Kang. All rights reserved.
//

#import "NewItemViewController.h"


@interface NewItemViewController ()
@property (weak, nonatomic) IBOutlet UITextField *taskName;
@property (weak, nonatomic) IBOutlet UISlider *prioritySlider;
@property (strong, nonatomic) Todo *inputTask;

@property (strong, nonatomic) ViewController *vc;

@end

@implementation NewItemViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
//- (IBAction)choosePriority:(id)sender {
//
//}

//- (IBAction)confirm:(id)sender {
//    NSString *title = self.taskName.text;
//    float priority = self.prioritySlider.value;
//    self.inputTask = [[Todo alloc]initWithTitle:title andPriority:priority];
////    [self addTaskToList: self.vc];
//}


@end
