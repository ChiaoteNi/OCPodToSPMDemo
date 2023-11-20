//
//  Writer.m
//  OCPodToSPMDemo
//
//  Created by Chiaote Ni on 2023/11/19.
//

#import "Writer.h"
#import "DateProvider.h"

// This is a useless object that was designed to demonstrate how to migrate a pod to SPM. 
// Therefore, please focus on the migration process, not the code itself :)

@implementation Writer
{
    DateProvider *_dateProvider;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _content = @"Hello World";
    }
    return self;
}

- (NSString *)write {
    [self createMoreContent];
    return self.content;
}

- (void)createMoreContent {
    NSString *time = [_dateProvider currentDateString];
    _content = [NSString stringWithFormat:@"%@\n%@", self.content, time];
}

@end
