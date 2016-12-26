//
//  ArticlesLoadTask.m
//  newsAPI
//
//  Created by Maksim Kigan on 26/12/16.
//  Copyright © 2016 Maxim Keegan. All rights reserved.
//

#import <MagicalRecord/MagicalRecord.h>

#import "ArticlesLoadTask.h"
#import "Article+CoreDataProperties.h"

@implementation ArticlesLoadTask

- (NSString *) absolutePath {
    return @"https://newsapi.org/v1/articles?source=the-next-web&sortBy=latest&apiKey=89e82964a6dd4285aa1888da7729af83";
}

- (DMNetworkHelperTaskMethod)method {
    return DMNetworkHelperTaskMethod_GET;
}

- (NSString *)findByKey {
    return @"articles";
}

- (DMNetworkHelperResponseOptions)responseOptions {
    return DMNetworkHelperResponseOptionResultIsArray;
}

- (void)parseResponseWithFinishBlock:(void (^)(id, NSError *))finishParseBlock {
    NSArray *allItems = self.allItems;
    
    __block NSArray *result = [NSArray new];
    
    [MagicalRecord saveWithBlock:^(NSManagedObjectContext * _Nonnull localContext) {
        result = [Article MR_importFromArray:allItems inContext:localContext];
    } completion:^(BOOL contextDidSave, NSError * _Nullable error) {
        finishParseBlock( result, nil );
    }];
}

@end
