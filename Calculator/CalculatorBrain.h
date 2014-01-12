//
//  CalculatorBrain.h
//  Calculator2
//
//  Created by Luke Causevic on 10/03/13.
//  Copyright (c) 2013 Luke Causevic. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculatorBrain : NSObject{
    double operand;
    NSString *waitingOperation;
    double waitingOperand;
}


- (void)setOperand:(double)anOperand;

- (double)performOperation:(NSString *)operation;

@end