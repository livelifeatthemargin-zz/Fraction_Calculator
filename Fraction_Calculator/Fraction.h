//
//  Fraction.h
//  
//
//  Created by vincentsfong on 1/25/14.
//
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject
@property int numerator, denominator;
-(void) print;

-(void) setTo: (int) n over: (int) d;

-(double) convertToNum;
-(NSString *) convertToString;



-(Fraction *) add: (Fraction *) f;
-(Fraction *) subtract: (Fraction *) f;
-(Fraction *) multiply: (Fraction *) f;
-(Fraction *) divide: (Fraction *) f;


-(void) reduce;

+(Fraction *) allocF;
+(int) count;
+(int) addCount;



@end
