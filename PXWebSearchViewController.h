//
//  PXWebSearchViewController.h
//  Phylodex
//
//  Created by Steve King on 2013-06-18.
//  Copyright (c) 2013 Phylosoft. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PXSearchResultsViewController.h"

@class PXSearchResultsViewController;

@interface PXWebSearchViewController : UIViewController <UISearchBarDelegate, UITableViewDataSource,UITableViewDelegate> {
    UITableView *tableView;
    UISearchBar *searchBar;
    NSMutableArray *totalStrings;
//    PXSearchResultsViewController *searchResults;
//    NSMutableArray *filteredStrings;
//    bool isFiltered;
}

@property (retain, nonatomic) IBOutlet UISearchBar *searchBar;
//@property (retain, nonatomic) IBOutlet UIButton *clearButton;
//@property (retain, nonatomic) IBOutlet UIButton *searchButton;
@property (retain, nonatomic) IBOutlet UITableView *tableView;
@property (retain, nonatomic) NSMutableArray *totalStrings;
//@property (retain, nonatomic) PXSearchResultsViewController *searchResults;

@end
