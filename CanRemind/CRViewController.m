//
//  CRViewController.m
//  CanRemind
//
//  Created by Joshua Howland on 6/5/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "CRViewController.h"

@interface CRViewController ()

@end

@implementation CRViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)scheduleReminder:(id)sender {
    NSDate *date = [[NSDate date] dateByAddingTimeInterval:10];

    UILocalNotification *localNotification = [[UILocalNotification alloc] init];
    if (localNotification) {
    localNotification.fireDate = date;
    localNotification.timeZone = [NSTimeZone defaultTimeZone];
    localNotification.alertBody = @"here is a notification!";
    localNotification.soundName = @"bell_tree.mp3";
        
    localNotification.applicationIconBadgeNumber = 1;
    [[UIApplication sharedApplication] scheduleLocalNotification:localNotification];
    }
}

@end
