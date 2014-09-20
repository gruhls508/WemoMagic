//
//  DeviceCell.h
//  WemoMagic
//
//  Created by Glen Ruhl on 9/19/14.
//  Copyright (c) 2014 MM. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol DeviceCellDelegate <NSObject>


@required

-(IBAction)switchFlipped:(id) sender;


@end


@interface DeviceCell : UITableViewCell {
    id <DeviceCellDelegate> delegate;
}

@property (strong, nonatomic) IBOutlet UISwitch *stateSwitch;
@property (strong, nonatomic) IBOutlet UILabel *wemoLabel;
@property id <DeviceCellDelegate> delegate;

@end
