//
//  ViewController.m
//  ClassesBestPractice
//
//  Created by Shalitha Senanayaka on 2019-04-24.
//  Copyright © 2019 Shalitha Senanayaka. All rights reserved.
//

#import "ViewController.h"
#import "UserClass.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self
                                                                          action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
    
    
    
}

-(void)dismissKeyboard {
    [self.txtYear resignFirstResponder];
    [self.txtDate resignFirstResponder];
    [self.txtMonth resignFirstResponder];
    [self.txtFirstName resignFirstResponder];
    [self.txtLastName resignFirstResponder];
    
    
}


- (IBAction)btnView:(UIButton *)sender {
    
    [self dismissKeyboard];
    
    //check the req fields
    if(self.txtDate.text.length == 0 || self.txtMonth.text.length == 0 || self.txtYear.text.length == 0){
        
        //display alert
        [self displayAlert:1];
        
        return;
    }
    
    if(self.txtYear.text.length != 4){
        
        //display alert
        [self displayAlert:2];
        return;
    }
    
    //implementation
    UserClass *objuser = [[UserClass alloc] init];
    
    objuser = [self setDataToUserObject];
    
    [self viewUserDetails:objuser];
    
    
}

-(void) displayAlert:(int) alertBoxType{
    NSString *title ;
    NSString *message ;
    NSString *okButtonText ;
    
    title = @"Alert";
    okButtonText = @"ok";
    
    if(alertBoxType == 1){
        message = @"please fill all the fields related to date of birth.";
    }else{
        message = @"please enter valid year.";
    }
    
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *okButton = [UIAlertAction actionWithTitle:okButtonText style:UIAlertActionStyleCancel handler:nil];
    
    [alert addAction:okButton];
    
    [self presentViewController:alert animated:YES completion:nil];
}


//date converting method
-(NSDate *) generateDate{
    NSString *dateString = [NSString stringWithFormat:@"%@-%@-%@", self.txtDate.text,
                            self.txtMonth.text, self.txtYear.text];
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    
    [dateFormatter setDateFormat:@"dd-MM-yyyy"];
    dateFormatter.timeZone = [NSTimeZone timeZoneForSecondsFromGMT:0];
    
    NSDate *dateFromString = [[NSDate alloc] init];
    dateFromString = [dateFormatter dateFromString:dateString];
    
    return dateFromString;
}

-(UserClass *) setDataToUserObject{
    
    //create user object
    UserClass *objUser = [[UserClass alloc] init];
    
    objUser.firstName = self.txtFirstName.text;
    objUser.lastName = self.txtLastName.text;
    objUser.dateOfBirth = [self generateDate];
    
    return objUser;
    
}

-(void) viewUserDetails:(UserClass *) objUser{
    
    //view
    self.txtViewFirstName.text = objUser.firstName;
    self.txtViewLastName.text = objUser.lastName;
    self.txtViewAge.text = [objUser generateAge];
}

@end
