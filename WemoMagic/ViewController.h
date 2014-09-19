//
//  ViewController.h
//  WemoMagic
//
//  Created by Glen Ruhl on 9/14/14.
//  Copyright (c) 2014 MM. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "WeMoNetworkManager.h"
#import "DeviceCell.h"

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property NSMutableArray *devicesArray;
@property (strong, nonatomic) IBOutlet UITableView *deviceListTableView;
@property DeviceCell *deviceCell;

@end
