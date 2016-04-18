//
//  NSString+Md5.m
//  Add
//
//  Created by huangxy on 16/4/18.
//  Copyright © 2016年 huangxy. All rights reserved.
//

#import "NSString+Md5.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (Md5)

-(NSString *)md5 {
    
    const char *cStr = [self UTF8String];
    unsigned char digest[16];
    CC_MD5(cStr, (CC_LONG)strlen(cStr), digest);
    
    NSMutableString *output = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH];
    for(int i = 0; i < CC_MD5_DIGEST_LENGTH; i++)
        [output appendFormat:@"%02x", digest[i]];
    
    return output;
}

@end
