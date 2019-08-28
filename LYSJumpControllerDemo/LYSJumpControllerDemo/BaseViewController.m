//
//  BaseViewController.m
//  LYSJumpControllerDemo
//
//  Created by HENAN on 2019/8/28.
//  Copyright © 2019 HENAN. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.numLabel = [[UILabel alloc] initWithFrame:self.view.bounds];
    self.numLabel.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:self.numLabel];
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
