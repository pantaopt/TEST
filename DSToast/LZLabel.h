//
//  LZLabel.h
//  试一下ReactiveViewModel
//
//  Created by 潘涛 on 2017/3/2.
//  Copyright © 2017年 潘涛. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LZLabelModel.h"

@interface LZLabel : UILabel

- (instancetype)initWithModel:(LZLabelModel *)model;

@property (nonatomic, strong) LZLabelModel *model;


@end
