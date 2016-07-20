//
//  Fraction.h
//  Fraction Test
//
//  Created by Ming-Han Chang on 2016/3/5.
//  Copyright © 2016年 Ming-Han Chang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject

@property int numerator, denominator;

+(Fraction *) allocF;
+(int) count;

-(void) print;
-(double) convertToNum;
-(void) setTo: (int) n over: (int) d;
//-(Fraction *)  add: (Fraction *) f;
//-(Fraction *) subtract: (Fraction *) f;
//-(Fraction *) multiply: (Fraction *) f;
-(int) showPage;
-(void) reduce;
-(instancetype) initWith: (int) n over: (int) d;
-(NSString *) description;
@end
