//
//  ViewController.m
//  Calculator
//
//  Created by Charu Jain on 2022-09-30.
//

#import "ViewController.h"
#import "Calculator_Brain.h"



@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *btn;
@property BOOL isNewNumber;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *operation;
@property (strong , nonatomic) Calculator_Brain * myModel;



@end

@implementation ViewController

-(Calculator_Brain *)myModel{
    if(_myModel == nil){
        _myModel= [[Calculator_Brain alloc]init];
    }
    return _myModel;
}


- (IBAction)btnPressed:(UIButton *)sender {
    if(self.isNewNumber){
        self.label.text = sender.titleLabel.text;
        self.isNewNumber = NO;
      
    }
    else{
        self.label.text = [ NSString stringWithFormat:@"%@%@" , self.label.text , sender.titleLabel.text];
    }
    
   
}


- (IBAction)clear:(UIButton *)sender {
    self.label.text = [ NSString stringWithFormat:@"%d" , 0];
       self.isNewNumber = YES;

}
- (IBAction)pressEnter {
    
    double value = self.label.text.doubleValue ;
    [self.myModel pushItem:value];
    self.isNewNumber = YES;

}

- (IBAction)operatorSelected:(UIButton *)sender {
    NSString * operator = sender.titleLabel.text;
    NSLog(@"%@" , operator);
    double result = [self.myModel calculate:operator];
    NSLog(@"%f" , result);
    self.label.text = [NSString stringWithFormat:@"%.2f" , result];
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    self.isNewNumber = YES;
    
}

   

@end
