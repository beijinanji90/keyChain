//
//  WQUserDataManager.h
//  keyChain
//
//  Created by chenfenglong on 16/9/9.
//  Copyright © 2016年 chenfenglong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface WQUserDataManager : NSObject

+(void)savePassWord:(NSString *)password;


+(id)readPassWord;


+(void)deletePassWord;

@end
