//
//  PXDetailViewController.m
//  Phylodex
//
//  Created by Steve King on 2013-06-23.
//  Copyright (c) 2013 Phylosoft. All rights reserved.
//

#import "PXDetailViewController.h"

@interface PXDetailViewController ()

@end

@implementation PXDetailViewController

@synthesize delegate;
@synthesize lifeform;
@synthesize image;
@synthesize imageView;
@synthesize cropButton;
@synthesize detailsTable;

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
    
    // set the navigation bar buttons
    UIBarButtonItem *cancelButton = [[UIBarButtonItem alloc]
                                     initWithTitle:@"Cancel"
                                     style:UIBarButtonItemStylePlain
                                     target:self
                                     action:@selector(cancel:)];
    self.navigationItem.leftBarButtonItem = cancelButton;
	
	UIBarButtonItem *saveButton = [[UIBarButtonItem alloc]
                                   initWithTitle:@"Save"
                                   style:UIBarButtonItemStyleDone
                                   target:self
                                   action:@selector(save:)];
    self.navigationItem.rightBarButtonItem = saveButton;
    
    // set the image and details
    imageView.image = image;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - handle navigation controller actions

- (IBAction)save:(id)sender
{
    [delegate detailViewControllerDidSave:self];
}

-(IBAction)cancel:(id)sender
{
    [delegate detailViewControllerDidCancel:self];
}


@end
