//
//  LiveListData.m
//  BiliBiliAv
//
//  Created by 胡亚刚 on 2016/11/21.
//  Copyright © 2016年 hu yagang. All rights reserved.
//

#import "LiveListData.h"

@implementation LiveListData
+ (NSDictionary *)modelContainerPropertyGenericClass {
    return @{@"banner" : [Banner class],
             @"partitions" : [LiveListItem class]};
}
@end
