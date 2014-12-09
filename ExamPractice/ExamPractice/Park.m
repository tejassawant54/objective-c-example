//
//  Park.m
//  ExamPractice
//
//  Created by Rohan Murde on 12/6/14.
//  Copyright (c) 2014 ROHAN. All rights reserved.
//

#import "Park.h"

@implementation Park

//Class Factory method
+(id)park{
    Park *park = [[self alloc] init];
    return park;
}

-(NSString *) description{
    return [NSString stringWithFormat:@"parkName=%@, \nparkLocation=%@ \nGPSLocation =%@",_parkName, _parkLocation,_gpsLocation];
}

//needed for MKAnnotation Protocol method
-(CLLocationCoordinate2D)coordinate{
    return self.gpsLocation.coordinate;
}

-(NSString *) title{
    return self.parkName;
}

-(NSString *) subtitle{
    return self.parkLocation;
}

@end
