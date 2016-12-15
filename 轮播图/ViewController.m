//
//  ViewController.m
//  轮播图
//
//  Created by admin on 16/12/14.
//  Copyright © 2016年 LiuYQ. All rights reserved.
//

#import "ViewController.h"
#import "MainView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    MainView *mainview = [[MainView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 200)];
    
    
    NSMutableArray *array = [NSMutableArray array];
    NSData *data1 = UIImagePNGRepresentation([UIImage imageNamed:@"dazao.png"]);
    NSData *data2 = UIImagePNGRepresentation([UIImage imageNamed:@"红枣菊花粥.png"]);
    NSData *data3 = UIImagePNGRepresentation([UIImage imageNamed:@"红枣粥.png"]);
    [array addObject:data1];
    [array addObject:data2];
    [array addObject:data3];
    mainview.array = array;
    [self.view addSubview:mainview];

//    [mainview SetImageToImageviewwithimagdata:array];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
