//
//  ViewController.m
//  AFNetworkingRequestDemo
//
//  Created by xp_mac on 16/3/29.
//  Copyright © 2016年 xp_mac. All rights reserved.
//

#import "MainViewController.h"
#import "Request.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSMutableDictionary *postDict = [[NSMutableDictionary alloc] init];
    [postDict setObject:@"" forKey:@"userName"];  //用户名，userName是参数
    [postDict setObject:@"" forKey:@"password"];  //密码，  password是参数
    
    //url的完整路径为：http://xxxx.com/pMember/login/ ,比如是http://www.baidu.com/pMember/login/
    [Request requestBaseUrl:@"http://xxxx.com/" path:@"/pMember/login/" parameters:postDict andCompleteBlock:^(NSError *error, NSDictionary *dict) {
        
        NSLog(@"====%@",dict);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
