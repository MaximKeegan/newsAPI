//
//  ArticlesNetworkHelper.m
//  newsAPI
//
//  Created by Maksim Kigan on 26/12/16.
//  Copyright © 2016 Maxim Keegan. All rights reserved.
//

#import "ArticlesNetworkHelper.h"

@implementation ArticlesNetworkHelper

- (NSOperation *) nh_loadLatestArticlesWithFinishBlock:(DMNetworkHelperRequestTaskFinishBlock)finishBlock {
    
    ArticlesLoadTask *task = [ArticlesLoadTask new];
    
    [task executeWithCompletitionBlock:finishBlock];
    
    return task;
}


@end
