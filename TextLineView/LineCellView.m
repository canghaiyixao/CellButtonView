//
//  lineCellView.m
//  TextLineView
//
//  Created by nbs on 16/6/14.
//  Copyright © 2016年 周军涛. All rights reserved.
//

#import "lineCellView.h"
#define kViewWith (self.frame.size.width / 3)
#define kViewHeight (self.frame.size.height/3)
@interface lineCellView ()

@property (nonatomic,strong) UIButton *button;

@end

@implementation lineCellView

- (id)initWithFrame:(CGRect)frame numOfBtn:(NSInteger)num {
    
    if (self = [super initWithFrame:frame]) {
    
        //创建button
        UIButton *button = [UIButton buttonWithType:(UIButtonTypeSystem)];
        button.backgroundColor = [UIColor redColor];
        NSInteger n = num / 3;
        NSInteger m = num % 3;
        
        for (int i = 0; i < 3; i++) {
            for (int j = 0; j < n; j++) {
                button.frame = CGRectMake(i * kViewWith, j * kViewHeight, kViewWith, kViewHeight);
                [self addSubview:button];
            }
        }
        
        switch (m) {
            case 0:
            {
                
            }
                break;
            case 1:
            {
                for (int i = 0; i < 1; i++) {
                    button.frame = CGRectMake(i * kViewWith, n * kViewHeight, kViewWith, kViewHeight);
                    
                }
            }
                break;
            case 2:
            {
                for (int i = 0; i < 2; i++) {
                   button.frame = CGRectMake(i * kViewWith, n * kViewHeight, kViewWith, kViewHeight);
                }
            }
                break;
            default:
                break;
        }
        
       
    }
    
    return self;
}





@end
