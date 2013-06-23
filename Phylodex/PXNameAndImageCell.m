//
//  PXNameAndColorCell.m
//  Cells
//
//  Created by ParkaPal on 2013-06-22.
//  Copyright (c) 2013 ParkaPal. All rights reserved.
//

#import "PXNameAndImageCell.h"

@implementation PXNameAndImageCell




- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

- (void)setName:(NSString *)n
{
    if (![n isEqualToString:_name]) {
        _name = [n copy];
        _nameValue.text = _name;
    } }
- (void)setSpecies:(NSString *)s
{
    if (![s isEqualToString:_species]) {
        _species = [s copy];
        _speciesValue.text = _species;
    } }

//this version for images directly
- (void)setImage:(UIImage *)i
{
    _image = [i copy];
    _imagepathValue.image = _image;
}

//this version for paths
 - (void)setImagepath:(NSString *)i
{
    if (![i isEqualToString:_imagepath]) {
        _imagepath = [i copy];
        _imagepathValue.image = [UIImage imageNamed:_imagepath];
    }
}

@end

