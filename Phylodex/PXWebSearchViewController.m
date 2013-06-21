//
//  PXWebSearchViewController.m
//  Phylodex
//
//  Created by Steve King on 2013-06-18.
//  Copyright (c) 2013 Phylosoft. All rights reserved.
//

#import "PXWebSearchViewController.h"

@interface PXWebSearchViewController ()

@end

@implementation PXWebSearchViewController

@synthesize searchButton;
@synthesize searchTextField;
@synthesize clearButton;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Search";
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

#pragma mark - UITextFieldDelegate methods

// became first responder
- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    // user now editing text field
}

// may be called if forced even if shouldEndEditing returns NO (e.g. view removed from window) or endEditing:YES called
- (void)textFieldDidEndEditing:(UITextField *)textField
{
    // ending editing text field
}

// called when clear button pressed. return NO to ignore (no notifications)
//- (BOOL)textFieldShouldClear:(UITextField *)textField {}

// called when 'return' key pressed. return NO to ignore.
//- (BOOL)textFieldShouldReturn:(UITextField *)textField {}

#pragma mark - IBAction methods

- (IBAction)searchButtonWasPressed:(id)sender
{
    // push the search results child view passing the search term
    PXSearchResultsViewController *resultsViewController = [[PXSearchResultsViewController alloc] init];
    resultsViewController.delegate = self;
    
    // set the title of the search view to the search string
    NSString *query = searchTextField.text;
    // TO-DO: check if empty string
    resultsViewController.title = query;
    [self.navigationController pushViewController:resultsViewController animated:YES];
}

- (IBAction)clearButtonWasPressed:(id)sender;
{
    // clears the text field
}

-(IBAction)backgroundClick:(id)sender {
	[searchTextField resignFirstResponder];
}

@end
