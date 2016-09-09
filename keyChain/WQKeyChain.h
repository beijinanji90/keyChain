//
//  WQKeyChain.h
//  keyChain
//
//  Created by chenfenglong on 16/9/9.
//  Copyright © 2016年 chenfenglong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WQKeyChain : NSObject

+(NSMutableDictionary *)getKeychainQuery:(NSString *)service;

+ (void)save:(NSString *)service data:(id)data;

+ (id)load:(NSString *)service;

+ (void)delete:(NSString *)service;

@end
