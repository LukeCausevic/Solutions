//
//  CalculatorViewController.h
//  Calculator
//
//  Created by Luke Causevic on 10/11/13.
//  Copyright (c) 2013 Luke Causevic. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CalculatorBrain.h"

@interface CalculatorViewController : UIViewController{
    
    IBOutlet UILabel * display;
    CalculatorBrain * brain;
    BOOL userIsIntheMiddleOfTypingANumber;
}

- (IBAction)digitPressed:(UIButton *)sender;

- (IBAction)operationPressed:(UIButton *)sender;

@end
