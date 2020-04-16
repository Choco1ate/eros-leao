//
//  MyPickerCell.h
//  WeexEros
//
//  Created by leao on 2019/7/4.
//  Copyright © 2019 benmu. All rights reserved.
//

#import "FSCalendarCell.h"

NS_ASSUME_NONNULL_BEGIN

@interface MyPickerCell : FSCalendarCell
// The start/end of the range
@property (weak, nonatomic) CALayer *selectionLayer;

// The middle of the range
@property (weak, nonatomic) CALayer *middleLayer;
@end

NS_ASSUME_NONNULL_END
