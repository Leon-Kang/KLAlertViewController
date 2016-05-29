//
//  KLAlertViewController.m
//  KLAlertViewController
//
//  Created by 康梁 on 16/5/1.
//  Copyright © 2016年 LeonKang. All rights reserved.
//

#import "KLAlertViewController.h"

@interface KLAlertViewController () <UIGestureRecognizerDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *backgroundView;
@property (weak, nonatomic) IBOutlet UIView *backgroundTapView;

@end

@implementation KLAlertViewController

- (void)show {
    UIViewController *rootViewController = [UIApplication sharedApplication].keyWindow.rootViewController;
    [rootViewController addChildViewController:self];
    [rootViewController.view addSubview:self.view];
    [self didMoveToParentViewController:rootViewController];
}

- (void)viewDidLoad {
    [super viewDidLoad];

    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(removeFromSuperViewController:)];
    tap.delegate = self;
    tap.numberOfTapsRequired = 1;
    tap.delaysTouchesBegan = YES;
    [self.backgroundTapView addGestureRecognizer:tap];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)removeAlert:(id)sender {
    [self removeFromSuperViewController:nil];
}

- (void)removeFromSuperViewController:(UIGestureRecognizer *)gr {
    [self didMoveToParentViewController:nil];
    [self.view removeFromSuperview];
    [self removeFromParentViewController];
    [self.backgroundTapView removeGestureRecognizer:gr];
}

@end
