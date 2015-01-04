//
//  PlanetsTableVC.m
//  Planets in Solar System
//
//  Created by Alfred on 31/12/14.
//  Copyright (c) 2014 maptier. All rights reserved.
//

#import "PlanetsTableVC.h"

@interface PlanetsTableVC ()

@property (strong,nonatomic)UIImage *img;

@end

@implementation PlanetsTableVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //self.planets = [[NSMutableArray alloc] init];
    self.planets = [@[] mutableCopy];
    NSArray *name = @[];
    
    NSString *planet1 = @"Mercury";
    NSString *planet2 = @"Venus";
    NSString *planet3 = @"Earth";
    NSString *planet4 = @"Mars";
    NSString *planet5 = @"Jupiter";
    NSString *planet6 = @"Saturn";
    NSString *planet7 = @"Uranus";
    NSString *planet8 = @"Neptune";

//    [self.planets addObject:planet1];
//    [self.planets addObject:planet2];
//    [self.planets addObject:planet3];
//    [self.planets addObject:planet4];
//    [self.planets addObject:planet5];
//    [self.planets addObject:planet6];
//    [self.planets addObject:planet7];
//    [self.planets addObject:planet8];
    
    self.planets = [@[planet1,planet2,planet3,planet4,planet5,planet6,planet7,planet8] mutableCopy];
    name = @[planet1,planet2,planet3,planet4,planet5,planet6,planet7,planet8];

//    NSMutableDictionary *myDic = [[NSMutableDictionary alloc]init];
//    [myDic setObject:@"Male" forKey:@"Gender"];
//    [myDic setObject:@"Manager" forKey:@"Occupation"];
//    [myDic setObject:@"United States" forKey:@"Citizenship"];
//    [myDic setObject:@51 forKey:@"Age"];
//    NSLog(@"%@", myDic);
//    
//    NSString *myReturn = [myDic objectForKey:@"Gender"];
//    NSLog(@"%@", myReturn);
    
//    NSNumber *myNum1 = [NSNumber numberWithInt:5];
//    NSNumber *myNum2 = [NSNumber numberWithFloat:3.1415926];
    NSNumber *myNum1 = @5;
    NSNumber *myNum2 = @3.1415926;
    NSLog(@"%@", myNum1);
    NSLog(@"%@", myNum2);

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    // Return the number of rows in the section.
    return [self.planets count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier     forIndexPath:indexPath];
    
    // Configure the cell…
    //cell.textLabel.text = @"my ... first table view";
    //cell.textLabel.text = [NSString stringWithFormat:@"Row %i", indexPath.row];
    
    //replace %i with %li,
    cell.textLabel.text = [NSString stringWithFormat:@"Solar System Planet %li", indexPath.row+1];
    //cell.detailTextLabel.text = [NSString stringWithFormat:@"Row %i", indexPath.row];
    cell.detailTextLabel.text = [self.planets objectAtIndex:indexPath.row];
    //UIImage *img =[UIImage imageNamed:@"Earth.jpg"];
    UIImage *img = [UIImage imageNamed:[NSString stringWithFormat:@"%@ %li",img,(long)indexPath.row]];
    cell.imageView.image = img;

    if (indexPath.row == 0){
        cell.backgroundColor = [UIColor blueColor];
    }else if (indexPath.row == 1){
        cell.backgroundColor = [UIColor greenColor];
    }else if (indexPath.row == 2){
        cell.backgroundColor = [UIColor brownColor];
    }else if (indexPath.row == 3){
        cell.backgroundColor = [UIColor grayColor];
    }else if (indexPath.row == 4){
        cell.backgroundColor = [UIColor yellowColor];
    }else if (indexPath.row == 5){
        cell.backgroundColor = [UIColor purpleColor];
    }else if (indexPath.row == 6){
        cell.backgroundColor = [UIColor redColor];
    }else {
        cell.backgroundColor = [UIColor darkGrayColor];
    }
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
