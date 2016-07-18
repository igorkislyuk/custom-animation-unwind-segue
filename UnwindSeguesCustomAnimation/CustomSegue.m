//
//  CustomSegue.m
//  UnwindSeguesCustomAnimation
//
//  Created by Igor on 19/07/16.
//  Copyright © 2016 Igor Kislyuk. All rights reserved.
//

#import "CustomSegue.h"

@implementation CustomSegue

- (void)perform {
    
    UIView *fromView = self.sourceViewController.view;
    UIView *toView = self.destinationViewController.view;
    
    UIView *containerView = fromView.superview;
    
    NSTimeInterval duration = 0.3f;
    
    CGRect initialRect = fromView.frame;
    CGRect offscreenRect = initialRect;
    
    offscreenRect.origin.x -= CGRectGetWidth(initialRect);
    
    toView.frame = offscreenRect;
    
    [containerView addSubview:toView];
    
    [UIView animateWithDuration:duration
                          delay:0.f
         usingSpringWithDamping:0.5
          initialSpringVelocity:4.f
                        options:0 animations:^{
                            toView.frame = initialRect;
                            
                        } completion:^(BOOL finished) {
                            [toView removeFromSuperview];
                            NSParameterAssert(self.destinationViewController.navigationController != nil);
                            [self.destinationViewController.navigationController popToViewController:self.destinationViewController animated:NO];
                            
                        }];
    

}

@end
