//
//  CalculatorBrain.m
//  Calculator2
//
//  Created by Luke Causevic on 10/03/13.
//  Copyright (c) 2013 Luke Causevic. All rights reserved.
//

#import "CalculatorBrain.h"

@implementation CalculatorBrain


- (void)setOperand:(double)anOperand
{
    operand = anOperand;
}

- (void)performWaitingOperation
{
    if([@"+" isEqual:waitingOperation]){
        
        operand = waitingOperand + operand;
        
    }else if([@"-" isEqual:waitingOperation]){
        
        operand = waitingOperand - operand;
        
    }else if([@"*" isEqual:waitingOperation]){
        
        operand = waitingOperand * operand;
        
    }else if([@"/" isEqual:waitingOperation]){
        
        operand = waitingOperand / operand;
        
    }else if([@"clr" isEqualToString:waitingOperation]){
        
        operand = 0;
        
    }else{
        
    }
}


- (double)performOperation:(NSString *)operation
{
    if([operation isEqual:@"sqrt"]) {
        
        operand = sqrt(operand);
        
    }else{
        
        [self performWaitingOperation];
        
        waitingOperation = operation;
        
        waitingOperand = operand;
    }
    return operand;
}

@end
