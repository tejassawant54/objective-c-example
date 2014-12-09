//
//  MapVC.h
//  ExamPractice
//
//  Created by Rohan Murde on 12/6/14.
//  Copyright (c) 2014 ROHAN. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>


@interface MapVC : UIViewController<MKMapViewDelegate, CLLocationManagerDelegate>

@property (weak, nonatomic) IBOutlet MKMapView *mapV;
@property (strong, nonatomic) CLLocationManager *locationManager;

@property (strong, nonatomic) NSMutableArray *Annoparks;
-(IBAction)ZoomToUserLoc;

@end
