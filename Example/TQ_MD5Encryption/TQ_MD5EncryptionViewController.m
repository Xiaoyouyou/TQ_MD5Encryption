//
//  TQ_MD5EncryptionViewController.m
//  TQ_MD5Encryption
//
//  Created by Xiaoyouyou on 07/09/2019.
//  Copyright (c) 2019 Xiaoyouyou. All rights reserved.
//

#import "TQ_MD5EncryptionViewController.h"
#import "QWSMD5Encryption.h"

@interface TQ_MD5EncryptionViewController ()

@end

@implementation TQ_MD5EncryptionViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSString * str = [[QWSMD5Encryption sharedMD5Encryption] md5:@"lxyshige henren"];
    NSLog(@"输出的字符串是：%@",str);
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
