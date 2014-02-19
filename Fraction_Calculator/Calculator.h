//
//  Calculator.h
//  Fraction_Calculator
//
//  Created by vincentsfong on 2/17/14.
//  Copyright (c) 2014 classroomM. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

@interface Calculator : NSObject
@property (strong, nonatomic) Fraction *operand1, *operand2, *accumulator;

-(Fraction *) performOperation: (char) op;
-(void) clear;

@end
