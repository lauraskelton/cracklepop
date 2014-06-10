//
//  ViewController.m
//  CracklePop
//
//  Created by Laura Skelton on 2/10/14.
//  Copyright (c) 2014 Laura Skelton. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [self printCracklePop];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)printCracklePop
{
    // A program that prints out the numbers 1 to 100 (inclusive).
    // If the number is divisible by 3, print Crackle instead of the number.
    // If it's divisible by 5, print Pop.
    // If it's divisible by both 3 and 5, print CracklePop.
    
    for (int i=1; i<=100; i++) {
        // Print number or special word for each i
        
        // Check if i is divisible by 3
        if (i % 3 == 0) {
            // i is divisible by 3
            
            // Check if i is also divisible by 5
            if (i % 5 == 0) {
                // i is divisible by 3 and 5, so print CracklePop
                NSLog(@"CracklePop");
            } else {
                // i is divisible by 3 and not 5, so print Crackle
                NSLog(@"Crackle");
            }
        }
        
        // Check if i is divisible by 5
        else if (i % 5 == 0) {
            // i is divisible by 5 and not 3, so print Pop
            NSLog(@"Pop");
        }
        
        // Otherwise i is not divisible by 3 or 5
        else {
            // i is not divisible by 3 or 5, so print the number
            NSLog(@"%d", i);
        }
    }
}

- (IBAction)displayCracklePop:(id)sender
{
    // A program that prints out the numbers 1 to 100 (inclusive).
    // If the number is divisible by 3, print Crackle instead of the number.
    // If it's divisible by 5, print Pop.
    // If it's divisible by both 3 and 5, print CracklePop.
    NSString *cracklePopString = @"";
    
    for (int i=1; i<=100; i++) {
        // Print number or special word for each i
        
        // Check if i is divisible by 3
        if (i % 3 == 0) {
            // i is divisible by 3
            
            // Check if i is also divisible by 5
            if (i % 5 == 0) {
                // i is divisible by 3 and 5, so print CracklePop
                
                cracklePopString = [NSString stringWithFormat:@"%@CracklePop", cracklePopString];
            } else {
                // i is divisible by 3 and not 5, so print Crackle
                [NSString stringWithFormat:@"%@Crackle", cracklePopString];
            }
        }
        
        // Check if i is divisible by 5
        else if (i % 5 == 0) {
            // i is divisible by 5 and not 3, so print Pop
            cracklePopString = [NSString stringWithFormat:@"%@Pop", cracklePopString];
        }
        
        // Otherwise i is not divisible by 3 or 5
        else {
            // i is not divisible by 3 or 5, so print the number
            cracklePopString = [NSString stringWithFormat:@"%@%d", cracklePopString, i];
        }
        
        if (i < 100) {
            cracklePopString = [NSString stringWithFormat:@"%@, ", cracklePopString];
        }
    }
    
    // show program results on screen
    cracklePopLabel.text = cracklePopString;
    
    cracklePopString = nil;
}

@end
