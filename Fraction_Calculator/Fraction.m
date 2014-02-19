//
//  Fraction.m
//  
//
//  Created by vincentsfong on 1/25/14.
//
//

#import "Fraction.h"

static int gCounter, addCounter;
@implementation Fraction

@synthesize numerator, denominator;


//Below commented out code has been truncated and instead is formed with the @synthesize statement
/*{
    int numerator;
    int denominator;
}*/

-(void) print
{
    
    
        
    NSLog(@"%i/%i", numerator, denominator);

    
}


-(double) convertToNum
{
    if (denominator != 0)
        return (double) numerator/denominator;
    else
        return NAN;
    
}

-(void) setTo:(int)n over:(int)d
{
    numerator = n;
    denominator = d;
    
}


-(Fraction *) add: (Fraction *) f
{
    Fraction *result = [[Fraction alloc] init];
    
    result.numerator = numerator *f.denominator + denominator * f.numerator;
    result.denominator = denominator * f.denominator;
    
    [result reduce];
    
    extern int addCounter;
    ++addCounter;
    
    return result;
    
    
}

-(Fraction *) subtract:(Fraction *)f
{
    
    
    Fraction *subtractResult = [[Fraction alloc] init];
    subtractResult.numerator = numerator * f.denominator - denominator * f.numerator;
    subtractResult.denominator = denominator * f.denominator;
    [subtractResult reduce];
    return subtractResult;
    

}

-(Fraction *) multiply:(Fraction *)f
{
    Fraction *multiplyResult = [[Fraction alloc] init];
    multiplyResult.numerator = numerator * f.numerator;
    multiplyResult.denominator = denominator * f.denominator;
    [multiplyResult reduce];
    return multiplyResult;
    
    
}

-(Fraction *) divide:(Fraction *)f
{
    
    Fraction *divideResult = [[Fraction alloc] init];
    divideResult.numerator = numerator * f.denominator;
    divideResult.denominator = f.numerator * denominator;
    [divideResult reduce];
    return divideResult;
    
    
}

-(void) reduce
{
    
    int u = numerator;
    int v = denominator;
    int temp;
    
    while (v != 0) {
        temp = u % v;
        u = v;
        v = temp;
    }
    
    numerator /= u;
    denominator /= u;
    
    
}

- (NSString *) convertToString
{
    if (numerator == denominator)
        if (numerator == 0)
            return @"0";
        else
            return @"1";
    else if (denominator ==1)
        return [NSString stringWithFormat:@"%i", numerator];
    else
        return [NSString stringWithFormat:@"%i/%i", numerator, denominator];
    
}

+ (Fraction *) allocF
{
    extern int gCounter;
    ++gCounter;
    
    return [Fraction alloc];
}

+ (int) count
{
    
    extern int gCounter;
    
    return gCounter;
}

+ (int) addCount
{
    extern int addCounter;
    return addCounter;
}
@end
