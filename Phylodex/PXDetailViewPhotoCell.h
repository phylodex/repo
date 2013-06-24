//
//  PXDetailViewPhotoCell.h
//  Phylodex
//
//  Created by Steve King on 2013-06-23.
//  Copyright (c) 2013 Phylosoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PXDetailViewPhotoCell : UITableViewCell
{
    IBOutlet UIImageView *imageView;
    IBOutlet UIButton *cropButton;
}

@property (nonatomic, retain) UIImageView *image;
@property (nonatomic, retain) UIButton *cropButton;

-(IBAction)cropButtonWasPressed:(id)sender;

@end
