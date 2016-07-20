//
//  Complex.m
//  Fraction Test
//
//  Created by Ming-Han Chang on 2016/3/15.
//  Copyright © 2016年 Ming-Han Chang. All rights reserved.
//

#import "Complex.h"

@implementation Complex
@synthesize real, imaginary;
-(void) setReal: (double) a andImaginary: (double) b
{
    real = a;
    imaginary = b;
}

-(Complex *) add: (Complex *) f
{
    Complex *result = [[Complex alloc] init];
    result.real = real + f.real;
    result.imaginary = imaginary +f.imaginary;
    
    return result;
}

-(void) print
{
    NSLog(@" %g + %gi", real, imaginary);
}

@end
