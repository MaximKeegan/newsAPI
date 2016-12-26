//
//  ArticlesNetworkHelper.h
//  newsAPI
//
//  Created by Maksim Kigan on 26/12/16.
//  Copyright © 2016 Maxim Keegan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ArticlesLoadTask.h"

@interface ArticlesNetworkHelper : NSObject

- (NSOperation *) nh_loadLatestArticlesWithFinishBlock:(DMNetworkHelperRequestTaskFinishBlock)finishBlock;

@end
