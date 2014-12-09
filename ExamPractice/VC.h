//
//  VC.h
//  ExamPractice
//
//  Created by Rohan Murde on 12/7/14.
//  Copyright (c) 2014 ROHAN. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@interface VC : UIViewController<MKMapViewDelegate>
@property (weak, nonatomic) IBOutlet UITextField *num1;
@property (weak, nonatomic) IBOutlet UITextField *num2;
@property (weak, nonatomic) IBOutlet UILabel *ans;

@property (strong,nonatomic) CLLocation *gps_location;

@end
