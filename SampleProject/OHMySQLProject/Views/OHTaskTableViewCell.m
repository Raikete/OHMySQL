//  Created by Oleg on 2015.
//  Copyright (c) 2015 Oleg Hnidets. All rights reserved.
//

#import "OHTaskTableViewCell.h"
#import "OHTask.h"

@interface OHTaskTableViewCell ()

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UIView *statusView;

@end

@implementation OHTaskTableViewCell

- (void)configureWithTask:(OHTask *)task {
    self.nameLabel.text = task.name;
    self.statusView.backgroundColor = task.status.integerValue ? [UIColor blueColor] : [UIColor greenColor];
}

@end