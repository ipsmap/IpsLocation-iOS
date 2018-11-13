//
//  IpsLocationService.h
//  IpsLocation
//
//  Created by zhangty on 2017/9/25.
//  Copyright © 2017年 Ipsmap. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IpsUserInfo.h"

@interface IpsLocationService : NSObject


@property (nonatomic, readonly)NSString * _Nullable appKey;
//用户信息
@property (nonatomic, strong)IpsUserInfo * _Nullable userInfo;

+ (nonnull instancetype)sharedInstance;

+ (void)initServices:(nonnull NSString *)appKey;

+ (NSString *_Nullable)SDKVersion;

@end
