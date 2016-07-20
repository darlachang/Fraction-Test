//
//  Fraction.m
//  Fraction Test
//
//  Created by Ming-Han Chang on 2016/3/5.
//  Copyright © 2016年 Ming-Han Chang. All rights reserved.
//

static int gCounter;

#import "Fraction.h"

@implementation Fraction

@synthesize numerator, denominator;

+(Fraction *) allocF
{
    extern int gCounter;
    ++gCounter;
    
    return [Fraction alloc];
}

+(int) count
{
    extern int gCounter;
    return gCounter;
}

-(void) print
{
    NSLog (@"%i/%i", numerator, denominator);
}

-(double) convertToNum
{
    if (denominator != 0)
        return (double) numerator / denominator;
    else
        return NAN;
}
-(NSString *) description
{
    return [NSString stringWithFormat: @"%i/%i", numerator, denominator];
}


-(void) setTo: (int) n over: (int) d
{
    numerator = n;
    denominator = d;
}
/*
-(Fraction *) add: (Fraction *) f
{
    Fraction *result = [[Fraction alloc] init];
    result.numerator = numerator * f.denominator + denominator * f.numerator;
    result.denominator = denominator * f.denominator;
    
    [result reduce];
    
    return result;
}

-(Fraction *) subtract: (Fraction *) f
{
    Fraction *results = [[Fraction alloc] init];
    results.numerator = numerator * f.denominator - denominator * f.numerator;
    results.denominator = denominator * f.numerator;
    
    [results reduce];
    return results;
}

-(Fraction *) multiply:(Fraction *) f
{
    Fraction *resultm = [[Fraction alloc] init];
    resultm.numerator = numerator * f.numerator;
    resultm.denominator = denominator * f.denominator;
    
    [resultm reduce];
    return resultm;
}
*/
-(void) reduce
{
    int u = numerator;
    int v = denominator;
    int temp;
    
    while (v != 0){
        temp = u % v;
        u = v;
        v = temp;
    }
    
    numerator /= u;
    denominator /= u;
    
    
}

-(int) showPage
{
    static int pageCount = 0;
    pageCount++;
    return pageCount;
}

-(instancetype) initWith: (int) n over: (int) d
{
    self = [super init];
    if (self)
        [self setTo: n over: d];
    return self;
}
@end
