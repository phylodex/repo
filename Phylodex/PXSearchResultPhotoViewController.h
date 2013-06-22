//
//  PXSearchResultPhotoViewController.h
//  Phylodex
//
//  Description: Displays a search result photo with accreditation information
//
//  Created by Steve King on 2013-06-21.
//  Copyright (c) 2013 Phylosoft. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface PXSearchResultPhotoViewController : UIViewController

@property (weak, nonatomic)UIImage *image;
@property (atomic, readonly)NSString *photoInfo; // TO-DO: elaborate later

@end