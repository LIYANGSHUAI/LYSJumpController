//
//  FirstViewController.m
//  LYSJumpControllerDemo
//
//  Created by HENAN on 2019/8/28.
//  Copyright © 2019 HENAN. All rights reserved.
//

#import "FirstViewController.h"
#import "UINavigationController+LYSJumpController.h"
@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
    self.numLabel.text = @"2";
    
    UIBarButtonItem *back = [[UIBarButtonItem alloc] initWithTitle:@"取消" style:(UIBarButtonItemStyleDone) target:self action:@selector(backAction)];
    self.navigationItem.leftBarButtonItem = back;
}
- (void)backAction
{
    [self.navigationController popViewControllerBaseNavAnimated:YES];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.navigationController pushViewControllerPointer:@"FirstViewController" animated:YES];
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
