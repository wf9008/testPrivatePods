//
//  JackView.m
//  MircoJack
//
//  Created by wangfan on 2017/8/10.
//  Copyright © 2017年 wangfan. All rights reserved.
//

#import "JackView.h"
#import "Mirco.tools/MircoToolsViewController.h"

// 图片路径
#define MJRefreshSrcName(file) [@"Images.bundle" stringByAppendingPathComponent:file]
@implementation JackView
- (instancetype)init
{
    self = [super init];
    if (self) {
        self = (JackView *)[[UIView alloc] initWithFrame:CGRectMake(200,200,100,100)];
        
        NSBundle *bundle = [NSBundle bundleForClass:[JackView class]];
        
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:self.bounds];
        imageView.layer.borderWidth = 0.5;
        imageView.layer.borderColor = [UIColor blueColor].CGColor;
        NSString *imagePath = MJRefreshSrcName(@"LuFei.png");
        UIImage *image = [UIImage imageNamed:imagePath inBundle:bundle compatibleWithTraitCollection:nil];
        imageView.image = image;
        [self addSubview:imageView];
    }
    return self;
}


@end
