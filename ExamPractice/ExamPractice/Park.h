//
//  Park.h
//  ExamPractice
//
//  Created by Rohan Murde on 12/6/14.
//  Copyright (c) 2014 ROHAN. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface Park : NSObject<MKAnnotation>

@property (strong,nonatomic) NSString *parkName;
@property (strong, nonatomic) NSString *parkLocation;
@property (strong,nonatomic) CLLocation *gpsLocation;

+(id)park;

@end
