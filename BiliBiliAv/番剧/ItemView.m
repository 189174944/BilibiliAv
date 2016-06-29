//
//  ItemView.m
//  BiliBiliAv
//
//  Created by 胡亚刚 on 16/5/11.
//  Copyright © 2016年 hu yagang. All rights reserved.
//

#import "ItemView.h"

@interface ItemView ()
@property (nonatomic,assign) CGFloat itemWidth;
@property (nonatomic,assign) CGFloat itemPadding;

@end

@implementation ItemView

-(void)setItems:(NSArray *)items
{
    if (!items||items.count==0) return;
    
    CALayer * topLine = [CALayer layer];
    topLine.backgroundColor = [UIColor colorWithRed:0.92 green:0.92 blue:0.92 alpha:1].CGColor;
    topLine.size = CGSizeMake(kScreenWidth, CGFloatFromPixel(2));
    [self.layer addSublayer:topLine];
    
    for (int i=0; i<items.count; i++) {
        ItemModel * item = items[i];
        UIImageView * iconImageView = [UIImageView new];
        iconImageView.left = 30+i%4*(self.itemWidth+self.itemPadding);
        iconImageView.top = 10+i/4*(self.itemWidth+20+10);
        iconImageView.size = CGSizeMake(self.itemWidth, self.itemWidth);
        iconImageView.image = [UIImage imageNamed:item.icon];
        [self addSubview:iconImageView];
        
        UILabel * titleLabel = [UILabel new];
        titleLabel.font = [UIFont systemFontOfSize:10];
        titleLabel.textColor = [UIColor grayColor];
        titleLabel.textAlignment = NSTextAlignmentCenter;
        titleLabel.top = iconImageView.bottom;
        titleLabel.left = iconImageView.left;
        titleLabel.size = CGSizeMake(iconImageView.width, 20);
        titleLabel.text = item.title;
        [self addSubview:titleLabel];
        
        if (i == items.count-1) {
            
            self.size = CGSizeMake(kScreenWidth, titleLabel.bottom+10);
            
            CALayer * bottomLine = [CALayer layer];
            bottomLine.backgroundColor = [UIColor colorWithRed:0.92 green:0.92 blue:0.92 alpha:1].CGColor;
            bottomLine.bottom = self.height;
            bottomLine.size = CGSizeMake(kScreenWidth, CGFloatFromPixel(2));
            [self.layer addSublayer:bottomLine];
        }
    }
}

-(CGFloat)itemWidth
{
    return 40;
}

-(CGFloat)itemPadding
{
    return (kScreenWidth-60-4*self.itemWidth)/3;
}

@end
