//
//  PXSearchResultsViewController.h
//  Phylodex
//
//  Created by Daniel Hua on 13-6-21.
//  Copyright (c) 2013年 Phylosoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PXSearchResultsViewController : UIViewController <UIApplicationDelegate,UITableViewDataSource,UITableViewDelegate>{
    NSMutableArray *resultArray;
    UITableView *table;
}

@property (retain, nonatomic) NSMutableArray *resultArray;
@property (retain, nonatomic) UITableView *table;

@end
