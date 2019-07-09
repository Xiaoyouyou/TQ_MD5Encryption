//
//  QWSMD5Encryption.m
//  QWSDKTest
//
//  Created by wubi on 16/11/12.
//  Copyright © 2016年 wubi. All rights reserved.
//

#import "QWSMD5Encryption.h"
#import <CommonCrypto/CommonDigest.h>

static QWSMD5Encryption *instan = nil;

@implementation QWSMD5Encryption


/** 实现单例 */
+ (instancetype)sharedMD5Encryption
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instan = [[super allocWithZone:NULL] init];
    });
    
    return instan;
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone
{
    return [QWSMD5Encryption sharedMD5Encryption];
}

- (id)copyWithZone:(struct _NSZone *)zone
{
    return [QWSMD5Encryption sharedMD5Encryption];
}

/** MD5加密 */
- (NSString *) md5:(NSString *) input {
    
    const  char * cStr = [input UTF8String];
    
    unsigned char digest[CC_MD5_DIGEST_LENGTH];
    
    CC_MD5( cStr, strlen(cStr), digest ); // This is the md5 call
    
    NSMutableString *output = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
    
    for(int i = 0; i < CC_MD5_DIGEST_LENGTH; i++)
        [output appendFormat:@"%02x", digest[i]];
    
    return  output;
    
}

@end
