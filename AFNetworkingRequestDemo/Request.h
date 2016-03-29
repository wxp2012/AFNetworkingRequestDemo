//
//  Request.h
//  AFNetworkingRequestDemo
//
//  Created by xp_mac on 16/3/29.
//  Copyright © 2016年 xp_mac. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^Block)(NSError *error, NSDictionary *dict);

@interface Request : NSObject

+ (void) requestBaseUrl:(NSString *)url path:(NSString *)pathUrl parameters:(NSDictionary *)parameters andCompleteBlock:(Block)block;

@end
