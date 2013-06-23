//
//  PXWebSearchViewController.m
//  Phylodex
//
//  Created by Steve King on 2013-06-18.
//  Copyright (c) 2013 Phylosoft. All rights reserved.
//

#import "PXWebSearchViewController.h"

@interface PXWebSearchViewController ()

@end

@implementation PXWebSearchViewController
@synthesize tableView;
@synthesize totalStrings;
//@synthesize searchResults;
@synthesize searchBar;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"Web Search";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.searchBar.delegate = self;
    self.tableView.delegate = self;
    
//    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(keyboardShown) name:UIKeyboardDidHideNotification object:nil];
//    
//    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(keyboardHidden) name:UIKeyboardWillHideNotification object:nil];
    
    totalStrings = [[NSMutableArray alloc] initWithObjects:@"one",@"two",@"three",@"four",nil];
    
}

//-(void)keyboardShown:(NSNotification*) note {
//    CGRect keyboardFrame;
//    [[[note userInfo]objectForKey:UIKeyboardFrameEndUserInfoKey]getValue:&keyboardFrame];
//    CGRect tableViewFrame =tableView.frame;
//    tableViewFrame.size.height -= keyboardFrame.size.height;
//    [tableView setFrame:tableViewFrame];
//}
//
//-(IBAction)tapBackground:(id)sender{
//    [searchBar resignFirstResponder];
//    
//}

//-(void)keyboardHidden:(NSNotification*) note {
//    [tableView setFrame:self.view.bounds];
//}

//-(void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText {
//    if (searchText.length == 0) {
//        isFiltered = false;
//    }
//    else {
//        isFiltered = true;
//        filteredStrings = [[NSMutableArray alloc]init];
//        
//        for (NSString *str in totalStrings) {
//            NSRange strRange = [str rangeOfString:searchText options:NSCaseInsensitiveSearch];
//            if (strRange.location != NSNotFound) {
//                [filteredStrings addObject:str];
//            }
//        }
//    }
//    [self.tableView reloadData];
//    
//}
-(bool)application:(UIApplication*)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions{
    return false;
}

-(void)searchBarSearchButtonClicked:(UISearchBar *)SearchBar {
    [searchBar resignFirstResponder];
    [totalStrings removeAllObjects];
    NSString *query = searchBar.text;
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"http://www.sfu.ca/~dhua/%@/%@.txt",query,query]];
    NSLog(@"%@",url);

//need to change in later version to read file online
    NSArray *data = [[NSString stringWithContentsOfURL:url encoding:NSUTF8StringEncoding error:nil] componentsSeparatedByString:@"\n"];
    
    [totalStrings addObject: data];
    
    
//    searchResults.resultArray = totalStrings;
    [self.tableView reloadData];
    
    PXSearchResultsViewController *resultView = [[PXSearchResultsViewController alloc] initWithNibName:@"PXSearchResultsViewController" bundle:nil];
    resultView.resultArray =self.totalStrings;
    [self.navigationController pushViewController:resultView animated:true];

//    self.searchResults = resultView;
    
    
//    [self.view.superview addSubview:resultView.view];
    
//    [self.view insertSubview:resultView.view atIndex:2];
}

-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
-(NSInteger)tableView: (UITableView *) tableView numberOfRowsInSection:(NSInteger)section {
//    if (isFiltered) {
//        return [filteredStrings count];
//    }
//    else {
        return [totalStrings count];
//    }
//
}

-(UITableViewCell*)tableView:(UITableView *)aTableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }
    cell.textLabel.text = [totalStrings objectAtIndex:indexPath.row];
    return cell;
}

//-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    static NSString *cellId = @"Cell";
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellId];
//    
//    if (!cell) {
//        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
//    }
//    if (!isFiltered) {
//        cell.textLabel.text = [totalStrings objectAtIndex:indexPath.row];
//        
//    }
//    else {
//        
//        cell.textLabel.text = [filteredStrings objectAtIndex:indexPath.row];
//        
//    }
//    return cell;
//}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
