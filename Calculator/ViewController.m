//
//  ViewController.m
//  Calculator
//
//  Created by Charu Jain on 2022-09-30.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@property float currentValue;
@property float value;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *btn;

@property BOOL isNewNumber;

@end

@implementation ViewController
- (IBAction)btnPressed:(UIButton *)sender {
    if(self.isNewNumber){
        self.label.text = sender.titleLabel.text;
        self.isNewNumber = NO;
       
    }
    else{
        self.label.text = [ NSString stringWithFormat:@"%@%@" , self.label.text , sender.titleLabel.text];
        
        
    }
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.isNewNumber = YES;
    
}

   

@end
