//
//  MyPickerCell.m
//  WeexEros
//
//  Created by leao on 2019/7/4.
//  Copyright © 2019 benmu. All rights reserved.
//

#import "MyPickerCell.h"
#import "FSCalendarExtensions.h"
#import <CommonMacro.h>

@implementation MyPickerCell
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        CALayer *selectionLayer = [[CALayer alloc] init];
        selectionLayer.backgroundColor = UIColorFromValue(0x07ae9c).CGColor;
        selectionLayer.actions = @{@"hidden":[NSNull null]}; // Remove hiding animation
        [self.contentView.layer insertSublayer:selectionLayer below:self.titleLabel.layer];
        self.selectionLayer = selectionLayer;
        
        CALayer *middleLayer = [[CALayer alloc] init];
        middleLayer.backgroundColor = [UIColorFromValue(0x07ae9c) colorWithAlphaComponent:0.3].CGColor;
        middleLayer.actions = @{@"hidden":[NSNull null]}; // Remove hiding animation
        [self.contentView.layer insertSublayer:middleLayer below:self.titleLabel.layer];
        self.middleLayer = middleLayer;
        
        // Hide the default selection layer
        self.shapeLayer.hidden = YES;
        
    }
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    self.titleLabel.frame = self.contentView.bounds;
}

- (void)layoutSublayersOfLayer:(CALayer *)layer
{
    [super layoutSublayersOfLayer:layer];
    self.selectionLayer.frame = self.contentView.bounds;
    self.middleLayer.frame = self.contentView.bounds;
}
@end
