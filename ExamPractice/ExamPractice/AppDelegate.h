//
//  AppDelegate.h
//  ExamPractice
//
//  Created by Rohan Murde on 12/6/14.
//  Copyright (c) 2014 ROHAN. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MapVC.h"
#import "Park.h"
#import "parkNameLocation.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) UITabBarController *tabBarController;
@property (strong, nonatomic) NSMutableArray *parks;

@end

