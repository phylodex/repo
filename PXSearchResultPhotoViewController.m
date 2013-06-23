//
//  PXSearchResultPhotoViewController.m
//  Phylodex
//
//  Created by Daniel Hua on 13-6-22.
//  Copyright (c) 2013年 Phylosoft. All rights reserved.
//

#import "PXSearchResultPhotoViewController.h"

@interface PXSearchResultPhotoViewController ()

@end

@implementation PXSearchResultPhotoViewController

@synthesize resultDiscription;
@synthesize detailItem;
@synthesize discription;
@synthesize picture;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

//    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentationDirectory, NSUserDomainMask, true);
//    
//    NSString *imageDirect = [paths objectAtIndex:0];
//    NSString *filePath = [imageDirect stringByAppendingFormat:@"Lion"/*[discription objectAtIndex:0]*/];
//    NSString *fileName = [filePath stringByAppendingPathExtension:@".png"];
//    NSLog(@"%@",filePath);
//    picture = [[UIImageView alloc]initWithImage:[UIImage imageWithContentsOfFile:filePath]];
    
    
    //need to change in later version to read file online
    NSString *nameofSearch = [[NSString alloc]initWithString:[discription objectAtIndex:0] ];
    NSLog(@"%@",discription);
    NSString *newString = [[NSString alloc]initWithString:[[nameofSearch componentsSeparatedByCharactersInSet:[NSCharacterSet newlineCharacterSet]] componentsJoinedByString:@""]];
//    NSMutableString  *newString = [[NSMutableString alloc]initWithString:nameofSearch];
//    NSRange foundRange = [nameofSearch rangeOfString:@"\n"];
//    if (foundRange.location != NSNotFound) {
//        NSLog(@"Hrereeeeeee");
//        [newString replaceCharactersInRange:foundRange withString:@""];
//    }
    NSLog(@"123%@123",newString);
    NSString *url = [[NSString alloc]initWithFormat:@"http://www.sfu.ca/~dhua/%@/%@.png",newString,newString];
    picture.image = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:url]]];
    NSLog(@"%@",url);
    
    NSString *name = [[NSString alloc]initWithFormat:@"Name: %@",[discription objectAtIndex:0] ];
    NSString *type = [[NSString alloc]initWithFormat:@"Type: %@",[discription objectAtIndex:1] ];
    NSString *habitat = [[NSString alloc]initWithFormat:@"Habitat: %@",[discription objectAtIndex:2] ];
    NSString *note = [[NSString alloc]initWithFormat:@"Note: %@",[discription objectAtIndex:3] ];
    [discription replaceObjectAtIndex:0 withObject:name];
    [discription replaceObjectAtIndex:1 withObject:type];
    [discription replaceObjectAtIndex:2 withObject:habitat];
    [discription replaceObjectAtIndex:3 withObject:note];
    
}

//-(void)configureView {
//    
//    UIImage *lion = [UIImage imageNamed:@"Lion.png"];
//    UIImage *eagle = [UIImage imageNamed:@"Eagle.png"];
//    
//    switch (itemNumber) {
//        case 0:
//            NSMutableArray *final = [NSMutableArray alloc]init
//            break;
//            
//        default:
//            break;
//    }
//}


-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
-(NSInteger)tableView: (UITableView *) tableView numberOfRowsInSection:(NSInteger)section {
    
    return [discription count];
    
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [resultDiscription dequeueReusableCellWithIdentifier:@"Cell"];
    if (!cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"Cell"];
    }

    cell.textLabel.text = [discription objectAtIndex:indexPath.row];
    
    return cell;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
