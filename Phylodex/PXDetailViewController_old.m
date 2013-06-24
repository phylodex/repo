//
//  PXDetailViewController.m
//  Phylodex
//
//  Created by Steve King on 2013-06-20.
//  Copyright (c) 2013 Phylosoft. All rights reserved.
//

#import "PXDetailViewController.h"

@interface PXDetailViewController ()

@end

@implementation PXDetailViewController

static NSString *CellTableIdentifier = @"CellTableIdentifier";

@synthesize delegate;
@synthesize lifeform;

#pragma mark - initialization
- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // custom
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // set the navigation bar buttons
    UIBarButtonItem *cancelButton = [[UIBarButtonItem alloc]
                                     initWithTitle:@"Cancel"
                                     style:UIBarButtonItemStylePlain
                                     target:self
                                     action:@selector(cancel:)];
    self.navigationItem.leftBarButtonItem = cancelButton;
	
	UIBarButtonItem *saveButton = [[UIBarButtonItem alloc]
                                   initWithTitle:@"Save"
                                   style:UIBarButtonItemStyleDone
                                   target:self
                                   action:@selector(save:)];
    self.navigationItem.rightBarButtonItem = saveButton;
    
    UITableView *tableView = (id)[self.view viewWithTag:1];
    tableView.rowHeight = 300;
    UINib *nib = [UINib nibWithNibName:@"PXDetailPhotoCell.xib" bundle:nil];
    [tableView registerNib:nib forCellReuseIdentifier:CellTableIdentifier];

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return NUM_SECTIONS;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    if ((int)section == IMAGE_SECTION)
    {
        return NUM_ROWS_IMAGE_SECTION;
    }
    else
    {
        return NUM_ROW_DETAILS_SECTION;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
//    static NSString *CellIdentifier = @"Cell";
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
//    if (cell == nil) {
//        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
//    }
//    
//    // Configure the cell...
//    
//    return cell;
    
//    NSInteger currentSection = [indexPath section];
	static NSString *CellIdentifier = @"CellIdentifier";
//	
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
//	if (cell == nil) {
//        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
//		if (currentSection == IMAGE_SECTION) {
//            PXDetailViewPhotoCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
//            cell.imageView.image = lifeform.image;
//		}
//    }
//    return cell;
    
    //if ((int)[indexPath section] == IMAGE_SECTION) {
    PXDetailViewPhotoCell *cell = [[PXDetailViewPhotoCell alloc] initWithStyle:UITableViewCellStyle reuseIdentifier:CellIdentifier];
    return cell;
    //}

    //UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    //return cell;
    
//    static NSString *CellIdentifier = @"Cell";
//    PXDetailViewPhotoCell *cell = [tableView dequeueReusableCellWithIdentifier:CellTableIdentifier];
//    if (cell == nil) {
//        cell = [[PXDetailViewPhotoCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
//    }
//    return cell;

}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
}

#pragma mark - handle navigation controller actions

- (IBAction)save:(id)sender
{
    [delegate detailViewControllerDidSave:self];
}

-(IBAction)cancel:(id)sender
{
    [delegate detailViewControllerDidCancel:self];
}

@end
