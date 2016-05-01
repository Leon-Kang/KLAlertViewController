//
//  KLAlertViewController.m
//  KLAlertViewController
//
//  Created by 康梁 on 16/5/1.
//  Copyright © 2016年 LeonKang. All rights reserved.
//

#import "KLAlertViewController.h"

@interface KLAlertViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *backgroundView;

@end

@implementation KLAlertViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)removeAlert:(id)sender {
    [self removeFromSuperViewController];
}

- (void)removeFromSuperViewController {
    [self didMoveToParentViewController:nil];
    [self.view removeFromSuperview];
    [self removeFromParentViewController];
}
@end
