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


# pragma mark Setting up View

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSString* routerSsid = [[WeMoNetworkManager sharedWeMoNetworkManager]accessPoint];
    NSLog(@"routerSsid=%@",routerSsid);

}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
{
        return 3;

}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{

    _deviceCell = [tableView dequeueReusableCellWithIdentifier:@"deviceCell"];
    [_deviceCell setDelegate:self];

    WeMoControlDevice *device = [_devicesArray objectAtIndex:indexPath.row];
    [_deviceCell.stateSwitch addTarget:self action:@selector(switchFlipped:) forControlEvents:UIControlEventTouchUpInside];


//    _deviceCell.stateSwitch.tag = indexPath.row;
    _deviceCell.wemoLabel.text = device.friendlyName;
    _deviceCell.imageView.image = device.icon;

    return _deviceCell;
}


# pragma mark Methods

-(void)switchFlipped:(id)sender
{
    UITableViewCell *selectedCell = (UITableViewCell *)[[[sender superview] superview] superview];
    int i = [[_deviceListTableView indexPathForCell:selectedCell]row];
    WeMoSetStateStatus result;

//    WeMoControlDevice *device = [_devicesArray objectAtIndex:sender.tag];
//    if (!switchState) {
//        result = [device setPluginStatus:WeMoDeviceOff];
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
