//
//  RegisterUserFormViewController.m
//  CoreDataLogin
//
//  Created by teks on 5/20/16.
//  Copyright © 2016 teks. All rights reserved.
//

#import "RegisterUserFormViewController.h"
#import "ShowAlertView.h"

@interface RegisterUserFormViewController ()

@end

@implementation RegisterUserFormViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)userRegistation:(id)sender {
    
    AppDelegate *appDelegate = [[UIApplication sharedApplication]delegate];
    NSManagedObjectContext *context = [appDelegate managedObjectContext];
    NSManagedObject *user ;
    user = [NSEntityDescription insertNewObjectForEntityForName:@"User" inManagedObjectContext:context];
    
    [user setValue:_txt_firstname.text  forKey:@"firstname"];
    [user setValue:_txt_lastname.text  forKey:@"lastname"];
    [user setValue:_txt_username.text forKey:@"username"];
    [user setValue:_txt_password.text forKey:@"password"];
    [user setValue:_txt_gender.text  forKey:@"gender"];
    [user setValue:_txt_address.text forKey:@"address"];
    [user setValue:_txt_email.text forKey:@"email"];
    
    [self  clearText];
    NSError *error;
    [context save:&error];
    
    ShowAlertView *alertView = [[[NSBundle mainBundle] loadNibNamed:@"ShowAlert" owner:self options:nil]lastObject];
    
    [self.view addSubview:alertView];
    
    
//    NSString *title = NSLocalizedString(@" ", nil);
//    NSString *message = NSLocalizedString(@"Register Successfully....! ", nil);
//    NSString *okButton = NSLocalizedString(@"Ok", nil);
//    
//    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
//    
//    UIAlertAction *okAction = [UIAlertAction actionWithTitle:okButton style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {
//       
//       
//
//        [self.navigationController popViewControllerAnimated:YES];
//        
//        // go back to view controller
////        if([self.navigationController.viewControllers[0] isKindOfClass:[ViewController class]])
////        {
////            [self.navigationController popToViewController:self.navigationController.viewControllers[0] animated:YES];
////        }
//       
//    }];
//    
//    [alertController addAction:okAction];
//    [self presentViewController:alertController animated:YES completion:nil];


}

-(void)clearText{
    
    _txt_firstname.text =@"";
    _txt_lastname.text = @"";
    _txt_username.text =@"";
    _txt_password.text = @"";
    _txt_gender.text = @"";
    _txt_address.text =@"";
    _txt_email.text = @"";

    
}
- (IBAction)clearTextField:(id)sender {
    [self clearText];
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
