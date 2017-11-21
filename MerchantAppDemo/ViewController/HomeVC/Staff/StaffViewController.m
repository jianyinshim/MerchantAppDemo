//
//  StaffViewController.m
//  MerchantAppDemo
//
//  Created by Beans Group on 15/11/2017.
//  Copyright © 2017 Beans Group. All rights reserved.
//

#import "StaffViewController.h"

@interface StaffViewController ()

@end

@implementation StaffViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _addStaffButton.layer.cornerRadius = 30;
    _addStaffButton.layer.masksToBounds = YES;
    
    [self retrieveAllStaff];
    _staffTableView.delegate = self;
    _staffTableView.dataSource = self;
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:YES];
    [self retrieveAllStaff];
    if (_staffList.count == 0) {
        [_addStaffView setHidden:NO];
    }
}

- (void)retrieveAllStaff {
    NSDictionary *params = @{@"phoneNum":@"6012171717",
                             @"compId":@"6012171717",
                             @"shopId":@"6012171717"};
    
    [GlobalMethod retrieveAllStaff:params success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"%@", responseObject);
        NSDictionary *responseDict = (NSDictionary *)responseObject;
        
        if (![responseDict isKindOfClass:[NSNull class]]) {
            _staffList = [NSMutableArray new];

            for (NSDictionary *staff in responseDict) {

                _staffObject = [StaffObject new];
                
                _staffObject.staffName = [GlobalMethod retrieveDataFromDictionary:staff objectName:@"staffName"];
                _staffObject.staffId = [GlobalMethod retrieveDataFromDictionary:staff objectName:@"staffId"];
                
//                _staffObject.staffName = staff[@"staffName"];
//                _staffObject.staffId = staff[@"staffId"];
                
                [_staffList addObject:_staffObject];
            }
            [_staffTableView reloadData];
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"%@", error);
    }];
}

- (IBAction)staffControlSegmented:(UISegmentedControl *)sender {
    if (sender.selectedSegmentIndex == 0) {
        [self retrieveAllStaff];
    } else {
        [self retrieveAllStaff];
    }
}

- (IBAction)addStaffButton:(id)sender {
    [self performSegueWithIdentifier:ADD_STAFF_VIEWCONTROLLER sender:self];

}

- (IBAction)addStaffTap:(id)sender {
    [self performSegueWithIdentifier:ADD_STAFF_VIEWCONTROLLER sender:self];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [_staffList count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    StaffTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];

    _staffObject = _staffList[indexPath.row];
    cell.staffName.text = _staffObject.staffName;
    cell.staffId.text = _staffObject.staffId;
    [cell.staffPhoneNum setHidden:YES];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self performSegueWithIdentifier:STAFF_DETAIL_VIEWCONTROLLER sender:self];
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
    if ([[segue identifier] isEqualToString:STAFF_DETAIL_VIEWCONTROLLER])
    {
        // Get reference to the destination view controller
        EditStaffProfileTableViewController *editStaffProfileVC = [segue destinationViewController];
        
        // Pass any objects to the view controller here, like...
        NSIndexPath *selectedIndexPath = [_staffTableView indexPathForSelectedRow];
        editStaffProfileVC.indexPath = selectedIndexPath.row;
        editStaffProfileVC.staffObject = _staffList[selectedIndexPath.row];
    }
}


@end
