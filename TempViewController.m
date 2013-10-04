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
-(void)convertToCelsius;
-(void)convertToFahrenheit;
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
    if ([selectedSegment selectedSegmentIndex] == 0) {
        [self convertToCelsius];
    } else if([selectedSegment selectedSegmentIndex] == 1){
        [self convertToFahrenheit];
    }

}
-(void) convertToCelsius{
    NSLog(@"convert %@ to celsius", [self.valueTextField text]);
}
-(void) convertToFahrenheit{
    NSLog(@"convert %@ to fahrenheit", [self.valueTextField text]);
}
- (IBAction)dismissOnTap:(id)sender {
    [self.view endEditing:YES];
}
@end
