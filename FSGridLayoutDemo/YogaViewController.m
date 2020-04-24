//
//  YogaViewController.m
//  FSGridLayoutDemo
//
//  Created by 钱志浩 on 2020/4/22.
//  Copyright © 2020 冯顺. All rights reserved.
//

#import "YogaViewController.h"
#import <YogaKit/UIView+Yoga.h>

@interface YogaViewController ()

@end

@implementation YogaViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self settingView];
}

-(void)settingView
{
    [self.view configureLayoutWithBlock:^(YGLayout * layout) {
        layout.isEnabled = YES;
        layout.width = YGPointValue(self.view.bounds.size.width);
        layout.height = YGPointValue(self.view.bounds.size.height);
        layout.alignItems = YGAlignCenter;
    }];
    
    UIView *contentView = [[UIView alloc]init];
    contentView.backgroundColor = [UIColor lightGrayColor];
    [contentView configureLayoutWithBlock:^(YGLayout * layout) {
        layout.isEnabled = true;
        // 4
        layout.flexDirection =  YGFlexDirectionColumn;
        layout.width = YGPointValue(self.view.bounds.size.width);
        layout.height = YGPointValue(self.view.bounds.size.height);
        layout.marginTop = YGPointValue(50);
//        layout.padding =  YGPointValue(10);//设置了全部子项目的填充值
    }];
    
    UIView *child1 = [[UIView alloc]init];
    child1.backgroundColor = [UIColor whiteColor];
    [child1 configureLayoutWithBlock:^(YGLayout * layout) {
        layout.isEnabled = YES;
        
        layout.flexDirection =  YGFlexDirectionRow;
        layout.justifyContent = YGJustifySpaceBetween;
        layout.width = YGPointValue(self.view.bounds.size.width);
        layout.height = YGPointValue(54);
        layout.marginTop = YGPointValue(100);
    }];
    
    UIImage *image1 = [UIImage imageNamed:@"icon_jibenziliao"];
    UIImageView *child1_image1 = [[UIImageView alloc]initWithImage:image1];
    [child1_image1 configureLayoutWithBlock:^(YGLayout * _Nonnull layout) {
        layout.isEnabled = YES;
        layout.width = YGPointValue(24);
        layout.height = YGPointValue(24);
        layout.marginTop = YGPointValue(15);
        layout.marginLeft = YGPointValue(15);
        layout.marginEnd = YGPointValue(15);
        layout.marginRight = YGPointValue(11);
    }];
    [child1 addSubview:child1_image1];
    
    UILabel *label1 = [[UILabel alloc]init];
    NSMutableAttributedString *label_text1 = [[NSMutableAttributedString alloc] initWithString:@"基本资料"];
    label1.attributedText = label_text1;
    [label1 configureLayoutWithBlock:^(YGLayout * _Nonnull layout) {
        layout.isEnabled = YES;
        layout.width = YGPointValue(100);
        layout.height = YGPointValue(24);
        layout.marginTop = YGPointValue(15);
        layout.marginEnd = YGPointValue(15);
    }];
    [child1 addSubview:label1];
    
    UILabel *label2 = [[UILabel alloc]init];
    NSMutableAttributedString *label_text2 = [[NSMutableAttributedString alloc] initWithString:@"待完善"];
    label2.attributedText = label_text2;
    [label2 configureLayoutWithBlock:^(YGLayout * _Nonnull layout) {
        layout.isEnabled = YES;
        layout.width = YGPointValue(100);
        layout.height = YGPointValue(24);
        layout.marginTop = YGPointValue(15);
        layout.marginEnd = YGPointValue(15);
    }];
    [child1 addSubview:label2];
    
    UIImage *image2 = [UIImage imageNamed:@"icon_moreg"];
    UIImageView *child1_image2 = [[UIImageView alloc]initWithImage:image2];
    [child1_image2 configureLayoutWithBlock:^(YGLayout * _Nonnull layout) {
        layout.isEnabled = YES;
        layout.width = YGPointValue(16);
        layout.height = YGPointValue(16);
        layout.marginTop = YGPointValue(18);
        layout.marginLeft = YGPointValue(15);
        layout.marginEnd = YGPointValue(18);
//        layout.marginRight = YGPointValue(11);
    }];
    [child1 addSubview:child1_image2];

    [contentView addSubview:child1];
    
    UIView *child2 = [[UIView alloc]init];
    child2.backgroundColor = [UIColor whiteColor];
    [child2 configureLayoutWithBlock:^(YGLayout * layout) {
        layout.isEnabled = YES;
        layout.width = YGPointValue(self.view.bounds.size.width);
        layout.height = YGPointValue(54);
        layout.marginTop = YGPointValue(1);
    }];

    [contentView addSubview:child2];
    
    UIView *child3 = [[UIView alloc]init];
    child3.backgroundColor = [UIColor whiteColor];
    [child3 configureLayoutWithBlock:^(YGLayout * layout) {
        layout.isEnabled = YES;
        layout.width = YGPointValue(self.view.bounds.size.width);
        layout.height = YGPointValue(54);
        layout.marginTop = YGPointValue(1);
    }];

    [contentView addSubview:child3];
    
    UIView *child4 = [[UIView alloc]init];
    child4.backgroundColor = [UIColor whiteColor];
    [child4 configureLayoutWithBlock:^(YGLayout * layout) {
        layout.isEnabled = YES;
        layout.width = YGPointValue(self.view.bounds.size.width);
        layout.height = YGPointValue(54);
        layout.marginTop = YGPointValue(10);
    }];

    [contentView addSubview:child4];
    
    UIView *child5 = [[UIView alloc]init];
    child5.backgroundColor = [UIColor whiteColor];
    [child5 configureLayoutWithBlock:^(YGLayout * layout) {
        layout.isEnabled = YES;
        layout.width = YGPointValue(self.view.bounds.size.width);
        layout.height = YGPointValue(54);
        layout.marginTop = YGPointValue(1);
    }];

    [contentView addSubview:child5];
    
    UIView *child6 = [[UIView alloc]init];
    child6.backgroundColor = [UIColor whiteColor];
    [child6 configureLayoutWithBlock:^(YGLayout * layout) {
        layout.isEnabled = YES;
        layout.width = YGPointValue(self.view.bounds.size.width);
        layout.height = YGPointValue(54);
        layout.marginTop = YGPointValue(1);
    }];

    [contentView addSubview:child6];
    
    UIView *child7 = [[UIView alloc]init];
    child7.backgroundColor = [UIColor whiteColor];
    [child7 configureLayoutWithBlock:^(YGLayout * layout) {
        layout.isEnabled = YES;
        layout.width = YGPointValue(self.view.bounds.size.width);
        layout.height = YGPointValue(54);
        layout.marginTop = YGPointValue(10);
    }];

    [contentView addSubview:child7];
    
    UIView *child8 = [[UIView alloc]init];
    child8.backgroundColor = [UIColor whiteColor];
    [child8 configureLayoutWithBlock:^(YGLayout * layout) {
        layout.isEnabled = YES;
        layout.width = YGPointValue(self.view.bounds.size.width);
        layout.height = YGPointValue(54);
        layout.marginTop = YGPointValue(1);
    }];

    [contentView addSubview:child8];
    
    
    [self.view addSubview:contentView];
    
    [self.view.yoga applyLayoutPreservingOrigin:YES];
}

-(void)yogaView
{
    
    [self.view configureLayoutWithBlock:^(YGLayout * layout) {
        layout.isEnabled = YES;
        layout.width = YGPointValue(self.view.bounds.size.width);
        layout.height = YGPointValue(self.view.bounds.size.height);
        layout.alignItems = YGAlignCenter;
    }];
    
    UIView *contentView = [[UIView alloc]init];
    contentView.backgroundColor = [UIColor lightGrayColor];
    [contentView configureLayoutWithBlock:^(YGLayout * layout) {
        layout.isEnabled = true;
        // 4
        layout.flexDirection =  YGFlexDirectionRow;
        layout.width = YGPointValue(320);
        layout.height = YGPointValue(80);
        layout.marginTop = YGPointValue(100);
        
        layout.padding =  YGPointValue(10);//设置了全部子项目的填充值
    }];
    
    UIView *child1 = [[UIView alloc]init];
    child1.backgroundColor = [UIColor redColor];
    [child1 configureLayoutWithBlock:^(YGLayout * layout) {
        layout.isEnabled = YES;
        layout.width = YGPointValue(80);
        layout.marginRight = YGPointValue(10);
    }];


    [contentView addSubview:child1];


    UIView *child2 = [[UIView alloc]init];
    child2.backgroundColor = [UIColor blueColor];
    [child2 configureLayoutWithBlock:^(YGLayout * layout) {
        layout.isEnabled = YES;
        layout.width = YGPointValue(80);
        layout.flexGrow = 1;
        layout.height = YGPointValue(20);
        layout.alignSelf = YGAlignCenter;

    }];


    [contentView addSubview:child2];
    
    
    [self.view addSubview:contentView];
    
    [self.view.yoga applyLayoutPreservingOrigin:YES];
    
    
}

@end
