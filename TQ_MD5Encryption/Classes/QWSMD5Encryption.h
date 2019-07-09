//
//  QWSMD5Encryption.h
//  QWSDKTest
//
//  Created by wubi on 16/11/12.
//  Copyright © 2016年 wubi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QWSMD5Encryption : NSObject

+ (instancetype)sharedMD5Encryption;

- (NSString *) md5:(NSString *) input;

@end
