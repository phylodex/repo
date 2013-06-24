//
//  PXDetailViewController.h
//  Phylodex
//
//  Description: Shows the Detail view for each user photo
//
//  Created by Steve King on 2013-06-20.
//  Copyright (c) 2013 Phylosoft. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PXDetailViewPhotoCell.h"
#import "PXDummyModel.h"

#define NUM_SECTIONS 1
#define IMAGE_SECTION 0
#define DETAILS_SECTION 1
#define NUM_ROWS_IMAGE_SECTION 1
#define NUM_ROW_DETAILS_SECTION 2
#define CELL_ID @"CellIdentifier"

@protocol PXDetailViewControllerDelegate;


@interface PXDetailViewController : UITableViewController

@property (nonatomic, assign) id <PXDetailViewControllerDelegate>delegate;
@property (nonatomic, retain) PXDummyModel *lifeform;

-(IBAction)save:(id)sender;	// return to root view saving data
-(IBAction)cancel:(id)sender; // return to root view discarding changes

@end


@protocol PXDetailViewControllerDelegate
-(void)detailViewControllerDidSave:(PXDetailViewController *)controller;
-(void)detailViewControllerDidCancel:(PXDetailViewController *)controller;
@end

