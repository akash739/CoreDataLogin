//
//  ViewController.m
//  CoreDataLogin
//
//  Created by teks on 5/20/16.
//  Copyright © 2016 teks. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)clickLogin:(id)sender
{
    if ([self.username.text length] == 0) {
        self.req_username.text = @"*user name required";
    }else if ([self.password.text length] == 0)
    {
        self.req_username.text = @"";
        self.req_password.text = @"*password required";
    }else
    {
        
         self.req_password.text = @"";
        
    AppDelegate *appDelegate = [[UIApplication sharedApplication]delegate];
    NSManagedObjectContext *context = [appDelegate managedObjectContext];
    NSEntityDescription *entity = [NSEntityDescription entityForName:@"User" inManagedObjectContext:context];
    NSFetchRequest *request = [[NSFetchRequest alloc] init];
    [request setEntity:entity];
        NSLog(@"--> %@ %@",self.username.text,self.password.text);
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"(username == %@ AND password == %@)",self.username.text,self.password.text];
        NSLog(@">>>> %@",predicate);
        
    [request setPredicate:predicate];
        
    NSManagedObject *matches = nil;
    NSError *error;
    NSArray *objects = [context executeFetchRequest:request error:&error];
       
    if ([objects count] == 0) {
                    self.wrong_user_password.text = @"Please check username and password";
        
    }
    else
    {
            matches = [objects objectAtIndex:0];
            NSLog(@"asfdfas %@ : %@",[matches valueForKey:@"username"],[matches valueForKey:@"password"]);
            UserPageViewController *userpage = [self.storyboard instantiateViewControllerWithIdentifier:@"UserPageViewController"];
            userpage.wel = [matches valueForKey:@"username"];
            [self.navigationController pushViewController:userpage animated:YES];

    }
    }
    
}



- (IBAction)registerNewUser:(id)sender {
    RegisterUserFormViewController *registerpage = [self.storyboard instantiateViewControllerWithIdentifier:@"RegisterUserFormViewController"];
    [self.navigationController pushViewController:registerpage animated:YES];
}
@end
