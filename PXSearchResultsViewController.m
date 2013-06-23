//
//  PXSearchResultsViewController.m
//  Phylodex
//
//  Created by Daniel Hua on 13-6-21.
//  Copyright (c) 2013年 Phylosoft. All rights reserved.
//

#import "PXSearchResultsViewController.h"
#import "PXSearchResultPhotoViewController.h"

@interface PXSearchResultsViewController ()

@end

@implementation PXSearchResultsViewController

@synthesize resultArray;
@synthesize table;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Search Results";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [table reloadData];

}

-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
-(NSInteger)tableView: (UITableView *) tableView numberOfRowsInSection:(NSInteger)section {

    return [resultArray count];

}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [table dequeueReusableCellWithIdentifier:@"Cell"];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    //cell read content in second dimensional array (only read the name)
    cell.textLabel.text = [[resultArray objectAtIndex:indexPath.row]objectAtIndex:0];
    
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    PXSearchResultPhotoViewController *resultController = [[PXSearchResultPhotoViewController alloc]initWithNibName:@"PXSearchResultPhotoViewController" bundle:nil];
    resultController.discription = [resultArray objectAtIndex:indexPath.row];
    [self.navigationController pushViewController:resultController animated:true];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
