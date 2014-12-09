//
//  VC.m
//  ExamPractice
//
//  Created by Rohan Murde on 12/7/14.
//  Copyright (c) 2014 ROHAN. All rights reserved.
//

#import "VC.h"

@interface VC ()

@end

@implementation VC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(IBAction)saveData{
    float number1 =  [_num1.text floatValue];
    float number2 = [_num2.text floatValue];

    float an = number1+number2;
    _ans.text = [NSString stringWithFormat:@"%f",an];
    
    NSLog(@"Location: %@",_gps_location);
}

-(void) mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)textFieldReturn:(id)textField{
    [textField resignFirstResponder];
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
