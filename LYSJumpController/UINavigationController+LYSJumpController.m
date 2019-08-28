//
//  UINavigationController+LYSJumpController.m
//  LYSJumpControllerDemo
//
//  Created by HENAN on 2019/8/28.
//  Copyright © 2019 HENAN. All rights reserved.
//

#import "UINavigationController+LYSJumpController.h"
#import <objc/runtime.h>

@implementation UINavigationController (LYSJumpController)
- (void)pushViewControllerPointer:(NSString *)pointer parms:(NSDictionary<NSString *, id> * _Nullable)parms animated:(BOOL)animated
{
    UIViewController *pointerController = [[NSClassFromString(pointer) alloc] init];
    if (parms) {
        [pointerController setValuesForKeysWithDictionary:parms];
    }
    [self pushViewController:pointerController animated:animated];
}
- (void)pushViewControllerPointer:(NSString *)pointer animated:(BOOL)animated
{
    [self pushViewControllerPointer:pointer parms:nil animated:animated];
}
- (void)pushViewControllerPointer:(NSString *)pointer parms:(NSDictionary<NSString *, id> * _Nullable)parms newNavPointer:(NSString * _Nullable)newNavPointer animated:(BOOL)animated
{
    UIViewController *pointerController = [[NSClassFromString(pointer) alloc] init];
    if (parms) {
        [pointerController setValuesForKeysWithDictionary:parms];
    }
    UINavigationController *newNavPointerController = nil;
    if (newNavPointer) {
        newNavPointerController = [[NSClassFromString(newNavPointer) alloc] init];
    } else {
        newNavPointerController = [[UINavigationController alloc] init];
    }
    objc_setAssociatedObject(newNavPointerController, @"LYSNewPointerKey", @(1), OBJC_ASSOCIATION_RETAIN);
    [newNavPointerController pushViewController:pointerController animated:NO];
    UIBarButtonItem *backItem = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:(UIBarButtonItemStyleDone) target:self action:@selector(backAction)];
    pointerController.navigationItem.leftBarButtonItem = backItem;
    UIViewController *baseController = [[UIViewController alloc] init];
    [baseController addChildViewController:newNavPointerController];
    [baseController.view addSubview:newNavPointerController.view];
    [self pushViewController:baseController animated:YES];
}
- (void)pushViewControllerNewNavPointer:(NSString *)pointer animated:(BOOL)animated
{
    [self pushViewControllerPointer:pointer parms:nil newNavPointer:nil animated:animated];
}
- (void)pushViewControllerNewNavPointer:(NSString *)pointer parms:(NSDictionary<NSString *, id> *)parms animated:(BOOL)animated
{
    [self pushViewControllerPointer:pointer parms:parms newNavPointer:nil animated:animated];
}
- (void)pushViewControllerPointer:(NSString *)pointer newNavPointer:(NSString *)newNavPointer animated:(BOOL)animated
{
    [self pushViewControllerPointer:pointer parms:nil newNavPointer:newNavPointer animated:animated];
}
- (void)popViewControllerNewNavAnimated:(BOOL)animated
{
    NSInteger num = [objc_getAssociatedObject(self, @"LYSNewPointerKey") integerValue];
    if (self.viewControllers.count == 1 && num == 1) {
        [self.parentViewController.navigationController popViewControllerAnimated:animated];
    } else {
        [self popViewControllerAnimated:animated];
    }
}
- (void)popViewControllerNewNavRootViewControllerAnimated:(BOOL)animated
{
    [self popToRootViewControllerAnimated:animated];
}
- (void)popViewControllerNewNavToViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    [self popToViewController:viewController animated:animated];
}
- (void)popViewControllerBaseNavAnimated:(BOOL)animated
{
    [self.parentViewController.navigationController popViewControllerAnimated:animated];
}
- (void)popViewControllerBaseNavRootViewControllerAnimated:(BOOL)animated
{
    [self.parentViewController.navigationController popToRootViewControllerAnimated:animated];
}
- (void)popViewControllerBaseNavToViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    [self.parentViewController.navigationController popToViewController:viewController animated:animated];
}
- (void)backAction
{
    [self popViewControllerAnimated:YES];
}
@end
