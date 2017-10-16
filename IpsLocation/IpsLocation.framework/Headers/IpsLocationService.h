//
//  IpsLocationService.h
//  IpsLocation
//
//  Created by zhangty on 2017/9/25.
//  Copyright © 2017年 Ipsmap. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface IpsLocationService : NSObject


@property (nonatomic, readonly)NSString * _Nullable appKey;
@property (nonatomic, copy)NSString* _Nullable    userId;
@property (nonatomic, copy)NSString* _Nullable    phoneNumber;

+ (nonnull instancetype)sharedInstance;

+ (void)initServices:(nonnull NSString *)appKey;

+ (NSString *_Nullable)SDKVersion;

@end
