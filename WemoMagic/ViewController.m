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
        return 2;

}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
//    static NSString *DeviceCellID = @"DeviceCellID";

    _deviceCell = [tableView dequeueReusableCellWithIdentifier:@"deviceCell"];
    [_deviceCell setDelegate:self];
    _indexPath = [indexPath row];

    _deviceCell.stateSwitch.tag = _indexPath;
    _device = [_devicesArray objectAtIndex:_indexPath];

    _deviceCell.wemoLabel.text = _device.friendlyName;
    _deviceCell.imageView.image = _device.icon;


    return _deviceCell;
}

-(IBAction)switchFlipped:(UISwitch *)sender
{
    WeMoSetStateStatus result;
//    if (!switchState) {
//        result = [_device setPluginStatus:WeMoDeviceOff];
//    }
//    else{
//        result = [device setPluginStatus:WeMoDeviceOn];
//    }
//    if (result == WeMoSetDeviceStatusSuccess) {
//
//    }else{
//        NSString* errorMessage = [NSString stringWithFormat:STATE_CHANGE_ERROR_MESSAGE,result];
//        UIAlertView* alertView = [[[UIAlertView alloc] initWithTitle:ALERT_ERROR_TITLE message:errorMessage delegate:nil cancelButtonTitle:OK_BUTTON otherButtonTitles: nil]
}


@end
