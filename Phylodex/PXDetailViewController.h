//
//  PXDetailViewController.h
//  Phylodex
//
//  Created by Steve King on 2013-06-23.
//  Copyright (c) 2013 Phylosoft. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PXDummyModel.h"

@protocol PXDetailViewControllerDelegate;


@interface PXDetailViewController : UIViewController

@property (nonatomic, assign) id <PXDetailViewControllerDelegate> delegate;
@property (nonatomic, retain) PXDummyModel *lifeform;
@property (nonatomic, retain) UIImage *image;
@property (retain, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIButton *cropButton;
@property (weak, nonatomic) IBOutlet UITableView *detailsTable;

-(IBAction)save:(id)sender;	// return to root view saving data
-(IBAction)cancel:(id)sender; // return to root view discarding changes

@end


@protocol PXDetailViewControllerDelegate
-(void)detailViewControllerDidSave:(PXDetailViewController *)controller;
-(void)detailViewControllerDidCancel:(PXDetailViewController *)controller;
@end

