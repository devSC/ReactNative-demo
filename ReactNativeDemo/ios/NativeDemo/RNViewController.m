//
//  RNViewController.m
//  NativeDemo
//
//  Created by Wilson Yuan on 2017/6/28.
//  Copyright © 2017年 Wilson Yuan. All rights reserved.
//

#import "RNViewController.h"
#import <RCTRootView.h>

@interface RNViewController ()

@end

@implementation RNViewController

- (void)loadView {
    NSURL *jsPath = [NSURL URLWithString:@"http://localhost:8081/index.ios.bundle?platform=ios&dev=true"];
    RCTRootView *rootView = [[RCTRootView alloc] initWithBundleURL:jsPath moduleName:@"RNHighScores" initialProperties:@{@"scores" : @[@{@"name" : @"Alex",@"value": @"42"},@{@"name" : @"Joel",@"value": @"30"},@{@"name" : @"Tom",@"value": @"10"}]} launchOptions:nil];
    self.view = rootView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
