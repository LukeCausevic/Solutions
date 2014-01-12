//
//  CalculatorViewController.m
//  Calculator
//
//  Created by Luke Causevic on 10/11/13.
//  Copyright (c) 2013 Luke Causevic. All rights reserved.
//

#import "CalculatorViewController.h"

@interface CalculatorViewController ()

@end

#import "CalculatorViewController.h"

@implementation CalculatorViewController


- (CalculatorBrain *)brain
{
    if (!brain){
        brain = [[CalculatorBrain alloc] init];
    }
    return brain;
}

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

- (IBAction)digitPressed:(UIButton *)sender;
{
    
    NSString *digit = [[sender titleLabel] text];
    
    if (userIsIntheMiddleOfTypingANumber) {
        
        [display setText:[[display text] stringByAppendingString: digit]];
        
    }else{
        [display setText:digit];
        
        userIsIntheMiddleOfTypingANumber = YES;
    }
    
}


- (IBAction)operationPressed:(UIButton *)sender;
{
    if (userIsIntheMiddleOfTypingANumber) {
        
        [[self brain] setOperand:[[display text] doubleValue]];
        
        userIsIntheMiddleOfTypingANumber = NO;
    }
    
    NSString *operation = [[sender titleLabel] text];
    
    double result = [[self brain] performOperation:operation];
    
    [display setText:[NSString stringWithFormat:@"%g", result]];
    
}

@end
