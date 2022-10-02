//
//  Calculator_Brain.h
//  Calculator
//
//  Created by Charu Jain on 2022-10-01.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Calculator_Brain : NSObject
-(void)pushItem:(double)num;
-(double)calculate:(NSString*)operation;

@end

NS_ASSUME_NONNULL_END
