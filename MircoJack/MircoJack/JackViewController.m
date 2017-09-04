//
//  JackViewController.m
//  MircoJack
//
//  Created by wangfan on 2017/8/14.
//  Copyright © 2017年 wangfan. All rights reserved.
//

#import "JackViewController.h"
#define MJRefreshSrcName(file) [@"Images.bundle" stringByAppendingPathComponent:file]

@interface JackViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation JackViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
    
    self.imageView.layer.borderWidth = 0.5;
    self.imageView.layer.borderColor = [UIColor blueColor].CGColor;
    NSString *imagePath = MJRefreshSrcName(@"LuFei");
    UIImage *image = [UIImage imageNamed:imagePath inBundle:bundle compatibleWithTraitCollection:nil];
//    UIImage *image = [UIImage imageNamed:imagePath];
    self.imageView.image = image;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
