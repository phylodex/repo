//
//  PXSearchResultsViewController.h
//  Phylodex
//
//  Description: Table of textual results for a web search
//
//  Created by Steve King on 2013-06-21.
//  Copyright (c) 2013 Phylosoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol PXSearchResultsViewControllerDelegate;


@interface PXSearchResultsViewController : UITableViewController

@property (nonatomic, assign)id <PXSearchResultsViewControllerDelegate>delegate;

@end


@protocol PXSearchResultsViewControllerDelegate
- (void)searchViewControllerDidEnd:(PXSearchResultsViewController *)controller;
@end
