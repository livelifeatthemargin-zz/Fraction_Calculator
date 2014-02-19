//
//  ViewController.h
//  Fraction_Calculator
//
//  Created by vincentsfong on 2/17/14.
//  Copyright (c) 2014 classroomM. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel *display;

-(void) processDigit: (int) digit;
-(void) processOp: (char) theOp;
-(void) storeFracPart;


-(IBAction) clickDigit1: (UIButton *) sender;
-(IBAction) clickDigit2: (UIButton *) sender;
-(IBAction) clickDigit3: (UIButton *) sender;
-(IBAction) clickDigit4: (UIButton *) sender;
-(IBAction) clickDigit5: (UIButton *) sender;
-(IBAction) clickDigit6: (UIButton *) sender;
-(IBAction) clickDigit7: (UIButton *) sender;
-(IBAction) clickDigit8: (UIButton *) sender;
-(IBAction) clickDigit9: (UIButton *) sender;
-(IBAction) clickDigit0: (UIButton *) sender;
-(IBAction) convertButton: (UIButton *) sender;

-(IBAction) clickPlus;
-(IBAction) clickMinus;
-(IBAction) clickMultiply;
-(IBAction) clickDivide;

-(IBAction) clickOver;
-(IBAction) clickEquals;
-(IBAction) clickClear;

@end
