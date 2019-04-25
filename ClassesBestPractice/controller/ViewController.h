//
//  ViewController.h
//  ClassesBestPractice
//
//  Created by Shalitha Senanayaka on 2019-04-24.
//  Copyright © 2019 Shalitha Senanayaka. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *txtFirstName;
@property (strong, nonatomic) IBOutlet UITextField *txtLastName;
@property (strong, nonatomic) IBOutlet UITextField *txtDate;
@property (strong, nonatomic) IBOutlet UITextField *txtMonth;
@property (strong, nonatomic) IBOutlet UITextField *txtYear;

- (IBAction)btnView:(UIButton *)sender;


@property (strong, nonatomic) IBOutlet UITextField *txtViewFirstName;
@property (strong, nonatomic) IBOutlet UITextField *txtViewLastName;
@property (strong, nonatomic) IBOutlet UITextField *txtViewAge;


@end

