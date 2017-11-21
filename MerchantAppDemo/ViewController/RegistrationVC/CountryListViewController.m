//
//  CountryListViewController.m
//  MerchantAppDemo
//
//  Created by Beans Group on 11/11/2017.
//  Copyright © 2017 Beans Group. All rights reserved.
//

#import "CountryListViewController.h"

@interface CountryListViewController ()

@end

@implementation CountryListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"Select Country";
    [self retrieveCountryList];
    
    _countryTableView.delegate = self;
    _countryTableView.dataSource = self;
    [_countryTableView reloadData];

}

- (void)retrieveCountryList {
    [GlobalMethod retrieveCountryList:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"%@", responseObject);
        NSDictionary *responseDict = (NSDictionary *)responseObject;
        
        if (![responseDict isKindOfClass:[NSNull class]]) {

            _countryList = [NSMutableArray new];
            for (NSDictionary *country in responseDict) {
                _countryObject = [CountryObject new];

                _countryObject.countryName = [GlobalMethod retrieveDataFromDictionary:country objectName:@"name"];
                _countryObject.capitalName = [GlobalMethod retrieveDataFromDictionary:country objectName:@"capital"];
                
//                _countryObject.countryName = country[@"name"];
//                _countryObject.capitalName = country[@"capital"];
                [_countryList addObject: _countryObject];
            }
            [_countryTableView reloadData];
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"%@", error);
    }];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_countryList count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CountryListTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    _countryObject = _countryList[indexPath.row];
    
    cell.countryLabel.text = _countryObject.countryName;
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self performSegueWithIdentifier:CAPITAL_VIEWCONTROLLER sender:self];
}

- (NSArray<NSString *> *)sectionIndexTitlesForTableView:(UITableView *)tableView {
    _sectionIndexList = @[@"A", @"B", @"C", @"D", @"E", @"F", @"G", @"H", @"I", @"J", @"K", @"L", @"M", @"N", @"O", @"P", @"Q", @"R", @"S", @"T", @"U", @"V", @"W", @"X", @"Y", @"Z"];;
    return _sectionIndexList;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    
    // Make sure your segue name in storyboard is the same as this line
    if ([[segue identifier] isEqualToString:CAPITAL_VIEWCONTROLLER])
    {
        // Get reference to the destination view controller
        CapitalListViewController *capitalListVC = [segue destinationViewController];
        
        // Pass any objects to the view controller here, like...
        NSIndexPath *indexPath = _countryTableView.indexPathForSelectedRow;
        capitalListVC.countryObject = _countryList[indexPath.row];
    }
}


@end
