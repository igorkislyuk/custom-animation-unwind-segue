//
//  CustomNavigationController.m
//  UnwindSeguesCustomAnimation
//
//  Created by Igor on 18/07/16.
//  Copyright © 2016 Igor Kislyuk. All rights reserved.
//

#import "CustomNavigationController.h"
#import "CustomSegue.h"

@implementation CustomNavigationController

- (void)unwindForSegue:(UIStoryboardSegue *)unwindSegue towardsViewController:(UIViewController *)subsequentVC {
    
    //way from code
//    CustomSegue *segue = [[CustomSegue alloc] initWithIdentifier:@"segue" source:unwindSegue.sourceViewController destination:unwindSegue.destinationViewController];
//    [segue perform];
    
    
}

@end
