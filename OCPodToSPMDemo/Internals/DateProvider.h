//
//  DateProvider.h
//  OCPodToSPMDemo
//
//  Created by Chiaote Ni on 2023/11/19.
//

@import Foundation;

// This is a useless object that was designed to demonstrate how to migrate a pod to SPM. 
// Therefore, please focus on the migration process, not the code itself :)

NS_ASSUME_NONNULL_BEGIN

@interface DateProvider : NSObject

- (NSString *)currentDateString;

@end

NS_ASSUME_NONNULL_END
