//
//  LZTextField.h
//  试一下ReactiveViewModel
//
//  Created by 潘涛 on 2017/3/3.
//  Copyright © 2017年 潘涛. All rights reserved.
//

#import <UIKit/UIKit.h>

#import <ReactiveCocoa/ReactiveCocoa.h>

#import "LZTextFieldModel.h"

typedef void(^LZTextFieldBlock)(NSString *text);

@interface LZTextField : UITextField

- (instancetype)initWithModel:(LZTextFieldModel *)model;

@property (nonatomic, strong) LZTextFieldModel *model;

- (void)LZ_textFieldBlock:(LZTextFieldBlock)lzTextFieldBlock;

@end
