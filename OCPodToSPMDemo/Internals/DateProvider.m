//
//  DateProvider.m
//  OCPodToSPMDemo
//
//  Created by Chiaote Ni on 2023/11/19.
//

@import OCNTPClock;
#import "DateProvider.h"

// This is a useless object that was designed to demonstrate how to migrate a pod to SPM. 
// Therefore, please focus on the migration process, not the code itself :)

@implementation DateProvider
{
    NSString *_content;
    OCNTPClock *_clock;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _content = @"Hello World";
        _clock = [[OCNTPClock alloc] init];
    }
    return self;
}

- (NSString *)currentDateString
{
    NSDate *now = [_clock currentTime];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = @"yyyy-MM-dd";
    return [formatter stringFromDate:now];
}

@end
