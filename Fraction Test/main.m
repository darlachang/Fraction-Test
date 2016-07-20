//
//  main.m
//  Fraction Test
//
//  Created by Ming-Han Chang on 2016/3/5.
//  Copyright © 2016年 Ming-Han Chang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
#import "Complex.h"
#import "Fraction+MathOps.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Fraction *aFraction = [[Fraction alloc] initWith: -1 over: 4];
        Fraction *bFraction = [[Fraction alloc] initWith: 3 over: 2];
        //Fraction *aFraction = [[Fraction alloc] init];
        //Fraction *bFraction = [[Fraction alloc] init];
        Fraction *resultFraction;
       // bool isPrint;
    
        Complex *aComplex = [[Complex alloc] init];
        Complex *bComplex = [[Complex alloc] init];
        Complex *resultComplex;
        
        id dataValue;
        
        Fraction *a, *b, *c;
        
        NSLog (@"Fraction allocated %i", [Fraction count]);
        
        a = [[Fraction allocF] init];
        b = [[Fraction allocF] init];
        c = [[Fraction allocF] init];
        
        NSLog (@"Fraction allocated %i", [Fraction count]);
        
        //[aFraction setTo: -1 over: 4];
        //[bFraction setTo: 3 over: 2];
        
        [aComplex setReal: 18.0 andImaginary: 2.5];
        [bComplex setReal: 6.3 andImaginary: 3.4];
        
        resultFraction = [aFraction add: bFraction];
        //[resultFraction print];
        
        resultComplex = [aComplex add: bComplex];
        //[resultComplex print];
        
        dataValue = aFraction;
        [dataValue print];
            
        dataValue = aComplex;
        [dataValue print];
        
        /*
        isPrint = YES;
        if (isPrint){
        [aFraction print];
        NSLog(@"+");
        [bFraction print];
        NSLog(@"=");
        [resultFraction print];
         
        }*/
        
        Fraction *sum;
        sum = [aFraction add: bFraction];
        NSLog(@"The sum of %@ and %@ is %@", aFraction, bFraction, sum);
                }
    
    return 0;
}
