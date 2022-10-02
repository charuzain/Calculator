//
//  ViewController.m
//  Calculator
//
//  Created by Charu Jain on 2022-09-30.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *btn;
@property BOOL isNewNumber;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *operation;
@property double result;
@property double currentValue;

@end

@implementation ViewController
- (IBAction)btnPressed:(UIButton *)sender {
    if(self.isNewNumber){
        self.label.text = sender.titleLabel.text;
        self.isNewNumber = NO;
        self.currentValue = [sender.titleLabel.text doubleValue];

    }
    else{
        self.label.text = [ NSString stringWithFormat:@"%@%@" , self.label.text , sender.titleLabel.text];
        self.currentValue = [sender.titleLabel.text doubleValue];
        
    }
    
}
- (IBAction)clear:(UIButton *)sender {
    self.label.text = [ NSString stringWithFormat:@"%d" , 0];
       self.isNewNumber = YES;

}
    
- (IBAction)operatorSelected:(UIButton *)sender {
    
 
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    self.isNewNumber = YES;
    
}

   

@end
