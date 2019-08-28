//
//  ViewController.m
//  LYSJumpControllerDemo
//
//  Created by HENAN on 2019/8/28.
//  Copyright © 2019 HENAN. All rights reserved.
//

#import "ViewController.h"
#import "UINavigationController+LYSJumpController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.numLabel.text = @"1";
    
    [self.navigationController setNavigationBarHidden:YES];
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.navigationController pushViewControllerPointer:@"FirstViewController" newNavPointer:@"UINavigationController" animated:YES];
}


@end
