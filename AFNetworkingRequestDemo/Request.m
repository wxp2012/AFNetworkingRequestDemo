//
//  Request.m
//  AFNetworkingRequestDemo
//
//  Created by xp_mac on 16/3/29.
//  Copyright © 2016年 xp_mac. All rights reserved.
//

#import "Request.h"
#import <AFNetworking.h>

@implementation Request

+ (void) requestBaseUrl:(NSString *)url path:(NSString *)pathUrl parameters:(NSDictionary *)parameters andCompleteBlock:(Block)block
{
    NSURL *URL = [NSURL URLWithString:[NSString stringWithFormat:@"%@",url]];
    AFHTTPSessionManager *session = [AFHTTPSessionManager manager];
    session.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/html"];
    [session POST:URL.absoluteString parameters:parameters constructingBodyWithBlock:^(id<AFMultipartFormData>  _Nonnull formData) {
        
    } progress:^(NSProgress * _Nonnull uploadProgress) {
        
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSError *error;
        NSDictionary *nodeDict = responseObject;
        if (block) {
            block(error,nodeDict);
        }
        
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        NSLog(@"出错%@",error);
        if (block) {
            block(error,nil);
        }
    }];
}

@end
