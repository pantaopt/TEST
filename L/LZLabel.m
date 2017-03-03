//
//  LZLabel.m
//  试一下ReactiveViewModel
//
//  Created by 潘涛 on 2017/3/2.
//  Copyright © 2017年 潘涛. All rights reserved.
//

#import "LZLabel.h"

@implementation LZLabel

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

- (instancetype)initWithModel:(LZLabelModel *)model{
    self = [super init];
    if(!self) return nil;
//     RACChannelTo(self, text) = RACChannelTo(model, textStr);
//    unsigned int count;
//    objc_property_t *propertyList = class_copyPropertyList([model class], &count);
//    for (unsigned int i=0; i<count; i++) {
//        const char *propertyName = property_getName(propertyList[i]);
//        struct objc_property *property = class_getProperty([model class], propertyName);
//        NSLog(@"propertyName---->%@", [NSString stringWithUTF8String:propertyName]);
//    
//        NSLog(@"初始时属性的地址(propertyName): %p",propertyName);
//        
//        NSLog(@"初始时属性的地址(property): %p",property);
//    }
    RACChannelTo(self, text) = RACChannelTo(model, text);
    return self;
}

- (void)setModel:(LZLabelModel *)model{
    _model = model;
    RACChannelTo(self, text) = RACChannelTo(model, text);
}


@end
