//
//  MainView.h
//  轮播图
//
//  Created by admin on 16/12/14.
//  Copyright © 2016年 LiuYQ. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef enum pageGO{
    PAGEThree=0,
    PAGE,


}PAGEMODEL;
@interface MainView : UIView<UIScrollViewDelegate>
@property(nonatomic ,strong)UIScrollView *MainScrollview;
@property(nonatomic ,strong)UIImageView *Imageview;
@property(nonatomic ,assign)int numPage;
@property(nonatomic ,strong)NSMutableArray *array;

@end
