//
//  CapitalListViewController.m
//  MerchantAppDemo
//
//  Created by Beans Group on 11/11/2017.
//  Copyright © 2017 Beans Group. All rights reserved.
//

#import "CapitalListViewController.h"

@interface CapitalListViewController ()

@end

@implementation CapitalListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = _countryObject.countryName;
    
    _capitalList = [NSMutableArray new];
    [_capitalList addObject:_countryObject];

    _capitalTableView.delegate = self;
    _capitalTableView.dataSource = self;
    [_capitalTableView reloadData];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return  [_capitalList count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CapitalListTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];

    _countryObject = _capitalList[indexPath.row];
    cell.capitalLabel.text = _countryObject.capitalName;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if([tableView cellForRowAtIndexPath:indexPath].accessoryType == UITableViewCellAccessoryCheckmark){
        [tableView cellForRowAtIndexPath:indexPath].accessoryType = UITableViewCellAccessoryNone;
        
    }else{
        [tableView cellForRowAtIndexPath:indexPath].accessoryType = UITableViewCellAccessoryCheckmark;
    }
    UINavigationController *navigationController = self.navigationController;
    [navigationController popViewControllerAnimated:NO];
    [navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
