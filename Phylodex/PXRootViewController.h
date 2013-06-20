//
//  PXRootViewController.h
//  Phylodex
//
//  Description: Main list of the users photos
//
//  Created by Steve King on 2013-06-18.
//  Copyright (c) 2013 Phylosoft. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PXDetailViewController.h"
#import "PXDetailViewController.h"
#import "PXDummyCollection.h"

@interface PXRootViewController : UITableViewController <PXDetailViewControllerDelegate> {
    PXDetailViewController *childController;
}

@property (nonatomic, retain)NSMutableArray *lifeforms; // list of animals

@end
