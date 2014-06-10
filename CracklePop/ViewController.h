//
//  ViewController.h
//  CracklePop
//
//  Created by Laura Skelton on 2/10/14.
//  Copyright (c) 2014 Laura Skelton. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    IBOutlet UILabel *cracklePopLabel;
}

- (void)printCracklePop;
- (IBAction)displayCracklePop:(id)sender;

@end
