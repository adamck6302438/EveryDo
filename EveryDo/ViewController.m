//
//  ViewController.m
//  EveryDo
//
//  Created by Frances ZiyiFan on 5/14/19.
//  Copyright © 2019 Ray Kang. All rights reserved.
//

#import "ViewController.h"
#import "ToDoTableViewCell.h"
#import "Todo.h"
#import "DetailViewController.h"
#import "NewItemViewController.h"

@interface ViewController () <NewItemViewControllDelegate>
@property (nonatomic, strong) NSArray<NSArray <Todo *>*> *toDoList;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSArray< UIColor *> *typeColor;
@property (strong, nonatomic) NSArray<NSString *> *sectionTitle;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    Todo *task1 = [[Todo alloc]initWithTitle:@"Buy Grocery" andPriority:51];
    Todo *task2 = [[Todo alloc]initWithTitle:@"Watch movie" andPriority:5];
    Todo *task3 = [[Todo alloc]initWithTitle:@"Finish Assignment" andPriority:100];
    Todo *task4 = [[Todo alloc]initWithTitle:@"Exercise" andPriority:20];
    Todo *task5 = [[Todo alloc]initWithTitle:@"Walk Ahboo" andPriority:35];
    Todo *task6 = [[Todo alloc]initWithTitle:@"Read a book" andPriority:7];
    self.toDoList = @[@[task1,
                        task3],
                      @[task2,
                        task4,
                        task5,
                        task6]
                      ];
    
    self.sectionTitle = @[@"Priority: High",
                          @"Priority: Low"
                          ];
    self.typeColor = @[[UIColor redColor],
                       [UIColor greenColor]
                       ];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString: @"detail"]){
        NSLog(@"test");
        DetailViewController *dvc = [segue destinationViewController];
        ToDoTableViewCell *cell = sender;
        Todo *task = cell.task;
        dvc.detailItem = task.title;
    }
}

#pragma mark - UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return self.sectionTitle.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.toDoList[section].count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    ToDoTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"test"];
    Todo *task = self.toDoList[indexPath.section][indexPath.row];
    [cell setTask:task andPriority:self.typeColor[indexPath.section]];
    
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return self.sectionTitle[section];
}


#pragma NewItemViewControllerDelegate

- (void)addInputTaskToList:(Todo *)task{
    
}


@end
