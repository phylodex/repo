//
//  PXSearchResultPhotoViewController.h
//  Phylodex
//
//  Created by Daniel Hua on 13-6-22.
//  Copyright (c) 2013年 Phylosoft. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface PXSearchResultPhotoViewController : UIViewController <UIApplicationDelegate> {
    NSMutableArray *discription;
    UIImageView *picture;
    
}

@property (retain, nonatomic) IBOutlet UIImageView *picture;
@property (retain, nonatomic) IBOutlet UITableView *resultDiscription;
@property (retain, nonatomic) NSMutableArray *discription;
@property (retain, nonatomic) id detailItem;

@end
