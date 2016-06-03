//
//  ViewController.h
//  CoreDataLogin
//
//  Created by teks on 5/20/16.
//  Copyright © 2016 teks. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UserPageViewController.h"
#import "RegisterUserFormViewController.h"
#import "AppDelegate.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *username;
@property (weak, nonatomic) IBOutlet UITextField *password;
@property (weak, nonatomic) IBOutlet UILabel *req_username;
@property (weak, nonatomic) IBOutlet UILabel *req_password;
@property (weak, nonatomic) IBOutlet UILabel *wrong_user_password;

@end

