//
//  DateProvider.m
//  OCPodToSPMDemo
//
//  Created by Chiaote Ni on 2023/11/19.
//

#import "DateProvider.h"

// This is a useless object that was designed to demonstrate how to migrate a pod to SPM. 
// Therefore, please focus on the migration process, not the code itself :)

@implementation DateProvider

- (NSString *)currentDateString
{
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = @"yyyy-MM-dd";
    return [formatter stringFromDate:[NSDate date]];
}

@end
