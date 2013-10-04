//
//  TempViewController.m
//  TempConverter
//
//  Created by Pamela Ocampo on 10/4/13.
//  Copyright (c) 2013 Pamela Ocampo. All rights reserved.
//

#import "TempViewController.h"

@interface TempViewController ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *fahrenheitButton;
@property (weak, nonatomic) IBOutlet UISegmentedControl *celsiusButton;
@property (weak, nonatomic) IBOutlet UITextField *valueTextField;
- (IBAction)convertTemperature:(id)sender;
- (IBAction)dismissOnTap:(id)sender;
@end

@implementation TempViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)convertTemperature:(id)sender{
    UISegmentedControl *selectedSegment = sender;
    float currentTemperature = [self.valueTextField.text floatValue];
    float convertedTemperature = currentTemperature;
    
    if ([selectedSegment selectedSegmentIndex] == 0) {
        // Deduct 32, then multiply by 5, then divide by 9
        convertedTemperature = ((currentTemperature - 32) * 5)/9;

    } else if([selectedSegment selectedSegmentIndex] == 1){
        // Multiply by 9, then divide by 5, then add 32
        convertedTemperature = ((currentTemperature * 9) / 5) + 32;
    }
    self.valueTextField.text = [NSString stringWithFormat:@"%0.2f", convertedTemperature];
}
- (IBAction)dismissOnTap:(id)sender {
    [self.view endEditing:YES];
}
@end
