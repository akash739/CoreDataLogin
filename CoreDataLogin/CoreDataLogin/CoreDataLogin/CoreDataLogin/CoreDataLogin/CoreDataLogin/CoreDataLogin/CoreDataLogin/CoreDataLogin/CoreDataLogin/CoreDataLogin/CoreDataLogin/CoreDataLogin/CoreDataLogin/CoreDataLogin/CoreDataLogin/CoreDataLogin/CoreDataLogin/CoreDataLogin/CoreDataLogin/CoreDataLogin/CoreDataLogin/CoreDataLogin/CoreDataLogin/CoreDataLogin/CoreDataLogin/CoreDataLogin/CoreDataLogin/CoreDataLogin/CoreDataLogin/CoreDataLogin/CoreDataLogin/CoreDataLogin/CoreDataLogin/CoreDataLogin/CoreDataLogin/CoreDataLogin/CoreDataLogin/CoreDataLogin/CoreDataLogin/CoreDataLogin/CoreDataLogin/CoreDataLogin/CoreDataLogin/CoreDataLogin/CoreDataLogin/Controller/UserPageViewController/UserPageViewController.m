//
//  UserPageViewController.m
//  CoreDataLogin
//
//  Created by teks on 5/20/16.
//  Copyright © 2016 teks. All rights reserved.
//

#import "UserPageViewController.h"

@interface UserPageViewController ()

@end

@implementation UserPageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%@",_wel);
    _welcome_label.text = [NSString stringWithFormat:@"Welcome %@",_wel];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
