//
//  AppDelegate.m
//  ExamPractice
//
//  Created by Rohan Murde on 12/6/14.
//  Copyright (c) 2014 ROHAN. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"data" ofType:@"plist"];
    NSDictionary *dictionary = [NSDictionary dictionaryWithContentsOfFile:path];
    NSArray *tempArray = [dictionary objectForKey:@"parks"];
    
    _parks = [NSMutableArray array];
    
    
    for (id dict in tempArray) {
        NSString *parkName = [dict objectForKey:@"parkName"];
        
        NSString *parkLocation = [dict objectForKey:@"parkLocation"];
        float latitude = [[dict objectForKey:@"latitude"] floatValue];
        float longitude = [[dict objectForKey:@"longitude"] floatValue];
        CLLocation *gps_location = [[CLLocation alloc] initWithLatitude:latitude longitude:longitude];
        
        Park *p = [Park park];
        p.parkName = parkName;
        p.parkLocation = parkLocation;
        p.gpsLocation = gps_location;
        
        [_parks addObject:p];
    }
    
    for(Park *pk in self.parks){
        NSLog(@"Park final = %@",pk);
    }
    
    
    UITabBarController *tabVC = (UITabBarController *) self.window.rootViewController;
    
    // For maps
    MapVC *myVC = (MapVC *) [tabVC.viewControllers objectAtIndex:0];
    myVC.Annoparks = self.parks;
    
    
    UINavigationController *navVC = [tabVC.viewControllers objectAtIndex:1];
    parkNameLocation *pNL = (parkNameLocation *) [navVC.viewControllers objectAtIndex: 0];
    pNL.data = _parks;
    
    return YES;
}

@end
