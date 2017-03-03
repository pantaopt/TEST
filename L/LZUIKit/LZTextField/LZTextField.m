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
    
    RACChannelTerminal *modelTerminal = RACChannelTo(model, text);
    RAC(self, text) = modelTerminal;
    [self.rac_textSignal subscribe:modelTerminal];
    
    return self;
}

- (void)setModel:(LZTextFieldModel *)model{
    _model = model;
    RACChannelTerminal *modelTerminal = RACChannelTo(model, text);
    RAC(self, text) = modelTerminal;
    [self.rac_textSignal subscribe:modelTerminal];
}

- (void)LZ_textFieldBlock:(LZTextFieldBlock)lzTextFieldBlock{
//    @weakify(self);
    [self.rac_textSignal subscribeNext:^(id x) {
//        @strongify(self);
        lzTextFieldBlock(x);
    }];
}

@end
