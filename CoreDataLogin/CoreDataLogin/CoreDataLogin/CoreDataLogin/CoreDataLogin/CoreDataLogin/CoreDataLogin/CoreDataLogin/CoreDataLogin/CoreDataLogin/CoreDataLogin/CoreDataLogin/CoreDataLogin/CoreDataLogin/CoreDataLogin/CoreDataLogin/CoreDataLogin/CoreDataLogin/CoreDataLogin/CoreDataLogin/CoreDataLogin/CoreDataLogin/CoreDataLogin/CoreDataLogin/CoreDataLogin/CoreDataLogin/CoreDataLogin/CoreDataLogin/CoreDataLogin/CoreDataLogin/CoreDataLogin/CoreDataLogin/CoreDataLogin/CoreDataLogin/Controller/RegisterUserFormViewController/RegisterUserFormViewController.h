//
//  RegisterUserFormViewController.h
//  CoreDataLogin
//
//  Created by teks on 5/20/16.
//  Copyright © 2016 teks. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "ViewController.h"




@interface RegisterUserFormViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *txt_firstname;
@property (weak, nonatomic) IBOutlet UITextField *txt_lastname;
@property (weak, nonatomic) IBOutlet UITextField *txt_username;
@property (weak, nonatomic) IBOutlet UITextField *txt_password;
@property (weak, nonatomic) IBOutlet UITextField *txt_gender;
@property (weak, nonatomic) IBOutlet UITextField *txt_address;
@property (weak, nonatomic) IBOutlet UITextField *txt_email;

@end
