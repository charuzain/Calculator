//
//  Calculator_Brain.m
//  Calculator
//
//  Created by Charu Jain on 2022-10-01.
//

#import "Calculator_Brain.h"

@interface Calculator_Brain()

@property (nonatomic , strong , readwrite) NSMutableArray *numbers;
@property double firstNum;
@property double secondNum;

//-(double)popItem;
@end


@implementation Calculator_Brain

-(NSMutableArray *)numbers{
    if(_numbers == nil){
        _numbers = [[NSMutableArray alloc]init];
    }
    return _numbers;
}

// method with parameters -(returnType)methodName:(paramterType)ParameterName{}
-(void)pushItem:(double)num{
//An array can only store objects (more precise: pointers to object). So you have to create objects which store integer
    NSNumber *number = [NSNumber numberWithDouble:num];
    [self.numbers addObject:number];
    //_ property variable itslef
    // self. --> calling the property . When we are calling the propery that mean we are  calling the getter. Lazy loading means we instantiate the object and the getter . if we do [_numbers addObject:number] we are not doing lazy loading we are just calling the variable.
    // whenever we access property within a class always use self unless we are in getter or init method
    
    //with mutable array and collection we can only add objects and double is not a object.
    //Its a primitive . We cant add primitives to collections . We create wrapper classes
    //NSNumber

}

-(double)popItem{
    NSNumber *lastItem = self.numbers.lastObject;
    if(lastItem){
        [self.numbers removeLastObject];
    }
    return [lastItem doubleValue];
}

-(double)calculate:(NSString*)operation{
    
    if([operation  isEqual: @"+"]){
        return [self popItem] + [self popItem];
    }
    if([operation  isEqual: @"-"]){
        _secondNum = [self popItem];
        _firstNum = [self popItem];
        
        return _firstNum - _secondNum;
    }
    if([operation  isEqual: @"*"]){
        return [self popItem] * [self popItem];
    }
    if([operation  isEqual: @"/"]){
        _secondNum = [self popItem];
        _firstNum = [self popItem];
        return _firstNum /_secondNum;
    }
    return -1;
}

@end
