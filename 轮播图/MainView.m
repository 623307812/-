//
//  MainView.m
//  轮播图
//
//  Created by admin on 16/12/14.
//  Copyright © 2016年 LiuYQ. All rights reserved.
//

#import "MainView.h"
#define screenMain  [UIScreen mainScreen].bounds.size.width
@implementation MainView
-(instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor whiteColor];
        [self addSubview:self.MainScrollview];
//        [NSTimer scheduledTimerWithTimeInterval:4 target:self selector:@selector(scrollpage) userInfo:nil repeats:YES];
    }
    return self;

}
-(UIScrollView *)MainScrollview
{
    if (!_MainScrollview) {
        _MainScrollview = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 200)];
        _MainScrollview.pagingEnabled = YES;
        _MainScrollview.delegate =self;
        [_MainScrollview setContentSize:CGSizeMake(screenMain*3, 0)];
        
    }

    return _MainScrollview;

}

-(void)scrollpage:(NSTimer *)timer
{
    int num = [[timer userInfo] intValue];
    float scrollPoint=0;
    if (_MainScrollview.contentOffset.x>=(num -1)*screenMain) {
        scrollPoint =0;
    }else{
    
        scrollPoint = _MainScrollview.contentOffset.x+screenMain;
    }
    [_MainScrollview setContentOffset:CGPointMake(scrollPoint, 0)];

}
-(void)setArray:(NSMutableArray *)array
{

    for (int i = 0; i<array.count; i++) {
        
        
        _Imageview = [[UIImageView alloc]initWithFrame:CGRectMake(screenMain *i, 0, screenMain, 200)];
        [_MainScrollview addSubview:_Imageview];
        
        _Imageview.image = [UIImage imageWithData:array[i]];
        [_MainScrollview addSubview:_Imageview];
    }
    [NSTimer scheduledTimerWithTimeInterval:4 target:self selector:@selector(scrollpage:) userInfo:[NSString stringWithFormat:@"%lu",(unsigned long)array.count] repeats:YES];

}
-(void)scrollViewDidScroll:(UIScrollView *)scrollView
{

}

@end
