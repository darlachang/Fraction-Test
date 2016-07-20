//
//  Complex.h
//  Fraction Test
//
//  Created by Ming-Han Chang on 2016/3/15.
//  Copyright © 2016年 Ming-Han Chang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Complex : NSObject
@property double real, imaginary;
-(void) print;
-(void) setReal: (double) a andImaginary: (double) b;
-(Complex *) add: (Complex *) f;

@end
