//
//  ViewController.m
//  tiantiankan
//
//  Created by 编程 on 15/11/19.
//  Copyright © 2015年 wxd. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong)UIButton * backButton;
@property (nonatomic, strong)UIButton * bottonButton;

@end

@implementation ViewController

#pragma mark - 生命周期方法
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view addSubview:self.backButton];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    //这里不做UI元素的改变
    //用来更新产生的数据
    NSLog(@"更新产生的数据");
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    //里面做Notification的监听之类的事情
}

-(void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];
    //在这里改变UI元素，只有在页面调整时才会调用
    NSLog(@"UI元素");
}

#pragma mark - 代理方法


#pragma mark - 事件响应方法

#pragma mark - getter

-(UIButton *)bottonButton
{

    return _bottonButton;
}

-(UIButton *)backButton
{
    
    return _backButton;
}

@end
