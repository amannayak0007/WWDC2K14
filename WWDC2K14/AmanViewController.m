//
//  AmanViewController.m
//  WWDC2K14
//
//  Created by iMac on 01/06/14.
//  Copyright (c) 2014 iMac. All rights reserved.
//

#import "AmanViewController.h"

@interface AmanViewController ()

@end

@implementation AmanViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    destinationDate = [NSDate dateWithTimeIntervalSince1970:1401728400];
    
    
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(updateLabel) userInfo:nil repeats:YES];
}




-(void)updateLabel {
    
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    int units = NSDayCalendarUnit | NSHourCalendarUnit | NSMinuteCalendarUnit | NSSecondCalendarUnit;
    
    
    NSDateComponents *components = [calendar components:units fromDate:[NSDate date] toDate:destinationDate options:0];
    
    
    [countdownLabel setText:[NSString stringWithFormat:@"%ld%c:%ld%c:%ld%c:%ld%c", (long)[components day], 'd', (long)[components hour], 'h', (long)[components minute], 'm', (long)[components second], 's']];
    
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
