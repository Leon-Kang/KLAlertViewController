//
//  ViewController.m
//  KLAlertViewController
//
//  Created by 康梁 on 16/5/1.
//  Copyright © 2016年 LeonKang. All rights reserved.
//

#import "ViewController.h"
#import "KLAlertViewController.h"

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

- (IBAction)showAlert:(id)sender {
    KLAlertViewController *alertOne = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"sbAlertView"];
    [alertOne show];
}

@end
