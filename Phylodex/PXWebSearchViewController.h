//
//  PXWebSearchViewController.h
//  Phylodex
//
//  Created by Steve King on 2013-06-18.
//  Copyright (c) 2013 Phylosoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PXWebSearchViewController : UIViewController <UITextFieldDelegate> {
    IBOutlet UITextField *searchTextField;
	IBOutlet UIButton *searchButton;
    IBOutlet UIButton *clearButton;
}

@property (nonatomic, retain) UITextField *searchTextField;
@property (nonatomic, retain) UIButton *searchButton;
@property (nonatomic, retain) UIButton *clearButton;

// TO-DO: Add the IBAction methods and connect them to the controls in Interface builder
// implement the IBAction methods to handle input
// implement the UITextFieldDelegate methods to improve interaction

@end
