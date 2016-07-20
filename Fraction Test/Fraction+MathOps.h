//
//  Fraction+MathOps.h
//  Fraction Test
//
//  Created by Ming-Han Chang on 2016/3/23.
//  Copyright © 2016年 Ming-Han Chang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

@interface Fraction (MathOps)

-(Fraction *) add: (Fraction *) f;
-(Fraction *) sub: (Fraction *) f;
-(Fraction *) mul: (Fraction *) f;
-(Fraction *) div: (Fraction *) f;
@end
