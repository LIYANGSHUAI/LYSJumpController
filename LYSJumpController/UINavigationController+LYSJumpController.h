//
//  UINavigationController+LYSJumpController.h
//  LYSJumpControllerDemo
//
//  Created by HENAN on 2019/8/28.
//  Copyright © 2019 HENAN. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UINavigationController (LYSJumpController)

/// 跳转到下一个页面,并携带参数
- (void)pushViewControllerPointer:(NSString *)pointer parms:(NSDictionary<NSString *, id> * _Nullable)parms animated:(BOOL)animated;
/// 跳转到下一个页面,不用携带参数
- (void)pushViewControllerPointer:(NSString *)pointer animated:(BOOL)animated;
/// 跳转到下一个页面,并携带参数,用一个新的可控制的导航控制去包装
- (void)pushViewControllerPointer:(NSString *)pointer parms:(NSDictionary<NSString *, id> * _Nullable)parms newNavPointer:(NSString * _Nullable)newNavPointer animated:(BOOL)animated;
/// 跳转到下一个页面,不用携带参数,用一个新的不可控制的导航控制去包装
- (void)pushViewControllerNewNavPointer:(NSString *)pointer animated:(BOOL)animated;
/// 跳转到下一个页面,并携带参数,用一个新的不可控制的导航控制去包装
- (void)pushViewControllerNewNavPointer:(NSString *)pointer parms:(NSDictionary<NSString *, id> *)parms animated:(BOOL)animated;
/// 跳转到下一个页面,不用携带参数,用一个新的可控制的导航控制去包装
- (void)pushViewControllerPointer:(NSString *)pointer newNavPointer:(NSString *)newNavPointer animated:(BOOL)animated;

/// 返回到新导航上一级页面,如果新导航一级是一级页面,那么返回原始导航最后一级页面
- (void)popViewControllerNewNavAnimated:(BOOL)animated;
/// 返回到新导航一级页面
- (void)popViewControllerNewNavRootViewControllerAnimated:(BOOL)animated;
/// 返回到新导航控制器某一级页面
- (void)popViewControllerNewNavToViewController:(UIViewController *)viewController animated:(BOOL)animated;
/// 返回到原始导航控制器最后一级页面
- (void)popViewControllerBaseNavAnimated:(BOOL)animated;
/// 返回到原始导航控制器一级页面
- (void)popViewControllerBaseNavRootViewControllerAnimated:(BOOL)animated;
/// 返回到原始导航控制器某一级页面
- (void)popViewControllerBaseNavToViewController:(UIViewController *)viewController animated:(BOOL)animated;

@end

NS_ASSUME_NONNULL_END
