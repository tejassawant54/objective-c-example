//
//  MapVC.m
//  ExamPractice
//
//  Created by Rohan Murde on 12/6/14.
//  Copyright (c) 2014 ROHAN. All rights reserved.
//

#import "MapVC.h"

@implementation MapVC

-(void)viewDidLoad{
    if ([_locationManager respondsToSelector:@selector(requestWhenInUseAuthorization)]) {
        
        [_locationManager requestWhenInUseAuthorization];
        
    }
    //Map and Location Initialization
    self.locationManager = [[CLLocationManager alloc]init];
    self.locationManager.delegate=self;
    self.mapV.delegate=self;
    [self.mapV addAnnotations:self.Annoparks];
    
}

-(IBAction)ZoomToUserLoc{
    [self.locationManager startUpdatingLocation];
}

- (void)locationManager:(CLLocationManager *)manager
    didUpdateToLocation:(CLLocation *)newLocation
           fromLocation:(CLLocation *)oldLocation
{
    CLLocation *currentLocation = newLocation;
    MKCoordinateRegion region = MKCoordinateRegionMakeWithDistance(currentLocation.coordinate, 5000, 5000);
    
    [self.mapV setRegion:region animated:TRUE];
    [self.locationManager stopUpdatingLocation];
    
    
}

@end
