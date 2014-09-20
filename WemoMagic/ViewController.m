//
//  ViewController.m
//  WemoMagic
//
//  Created by Glen Ruhl on 9/14/14.
//  Copyright (c) 2014 MM. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSString* routerSsid = [[WeMoNetworkManager sharedWeMoNetworkManager]accessPoint];
    NSLog(@"routerSsid=%@",routerSsid);

}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
{
        return 1;

}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
//    static NSString *DeviceCellID = @"DeviceCellID";

    _deviceCell = [tableView dequeueReusableCellWithIdentifier:@"deviceCell"];
    [_deviceCell setDelegate:self];

    _deviceCell.stateSwitch.tag = [indexPath row];


    return _deviceCell;
}

-(IBAction)switchFlipped:(id) sender
{
//    WeMoSetStateStatus result;

}


@end
