//
//  PXDummyCollection.m
//  Phylodex
//
//  Created by Steve King on 2013-06-20.
//  Copyright (c) 2013 Phylosoft. All rights reserved.
//

#import "PXDummyCollection.h"

@implementation PXDummyCollection

@synthesize dummyModels;

// This is ugly, but just to get interaction in the prototype working
- (id)init {
    // initialize a collection of dummy objects
    NSArray *animals = [NSArray arrayWithObjects:@"Eagle", @"Lion", nil];
    dummyModels = [[NSMutableArray alloc] initWithCapacity:[animals count]];
    
    for (NSString *animal in animals) {
        PXDummyModel *dummy = [PXDummyModel alloc];
        dummy.name = animal;
        // Note: Not sure if this photo is actually saved
        NSString *pathToImageFile = [[NSBundle mainBundle] pathForResource:animal ofType:@"png" inDirectory:@"Resources"];
        dummy.image = [UIImage imageWithContentsOfFile:pathToImageFile];
        [dummyModels addObject:dummy];
    }
    
    return self;
}

@end
