//
//  WQUserDataManager.m
//  keyChain
//
//  Created by chenfenglong on 16/9/9.
//  Copyright © 2016年 chenfenglong. All rights reserved.
//

#import "WQUserDataManager.h"
#import "WQKeyChain.h"

static NSString * const KEY_IN_KEYCHAIN = @"com.wuqian.app.allinfo";
static NSString * const KEY_PASSWORD = @"com.wuqian.app.password";

@implementation WQUserDataManager

+(void)savePassWord:(NSString *)password
{
    NSMutableDictionary *usernamepasswordKVPairs = [NSMutableDictionary dictionary];
    [usernamepasswordKVPairs setObject:password forKey:KEY_PASSWORD];
    [WQKeyChain save:KEY_IN_KEYCHAIN data:usernamepasswordKVPairs];
}

+(id)readPassWord
{
    NSMutableDictionary *usernamepasswordKVPair = (NSMutableDictionary *)[WQKeyChain load:KEY_IN_KEYCHAIN];
    return [usernamepasswordKVPair objectForKey:KEY_PASSWORD];
}

+(void)deletePassWord
{
    [WQKeyChain delete:KEY_IN_KEYCHAIN];
}

@end
