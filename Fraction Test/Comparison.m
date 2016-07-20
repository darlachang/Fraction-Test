//
//  Comparison.m
//  Fraction Test
//
//  Created by Ming-Han Chang on 2016/3/24.
//  Copyright © 2016年 Ming-Han Chang. All rights reserved.
//

#import "Comparison.h"

@implementation Fraction (Comparison)
-(BOOL) isEqualTo: (Fraction *) f
{
    if (f.numerator == self.numerator && f.denominator == self.denominator)
        return YES;
    else return NO;
}
-(int) compare: (Fraction *) f
{
    if (f < self)
        return -1;
    else
        return 1;
}
@end
