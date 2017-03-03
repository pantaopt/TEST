//
//  LZTextField.m
//  试一下ReactiveViewModel
//
//  Created by 潘涛 on 2017/3/3.
//  Copyright © 2017年 潘涛. All rights reserved.
//

#import "LZTextField.h"

@implementation LZTextField

- (instancetype)init{
    self = [super init];
    if(!self) return nil;
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if(!self) return nil;
    
    return self;
}

- (instancetype)initWithModel:(LZTextFieldModel *)model{
    self = [super init];
    if(!self) return nil;
    RACChannelTo(self, text) = RACChannelTo(model, text);
    return self;
}

- (void)setModel:(LZTextFieldModel *)model{
    _model = model;
    RACChannelTo(self, text) = RACChannelTo(model, text);
}

- (void)LZTextFieldBlock:(LZTextFieldBlock)lzTextFieldBlock{
    @weakify(self);
    [self.rac_textSignal subscribeNext:^(id x) {
        @strongify(self);
        self.model.text = x;
        lzTextFieldBlock(x);
    }];
}

@end
