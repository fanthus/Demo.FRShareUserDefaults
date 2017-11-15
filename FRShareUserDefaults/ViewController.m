//
//  ViewController.m
//  FRShareUserDefaults
//
//  Created by Fan's iMac  on 2017/11/15.
//  Copyright © 2017年 Fan's iMac . All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSButton *button = [[NSButton alloc] initWithFrame:NSMakeRect(50, 50, 100, 100)];
    button.target = self;
    button.action = @selector(btnPressed:);
    [button setKeyEquivalent:@"\e"];  //按 esc 键会自动触发 action.
    [self.view addSubview:button];
}

- (void)btnPressed:(id)sender {
    NSUserDefaults *userDefaults = [[NSUserDefaults alloc] initWithSuiteName:@"DZQ5YNVEU2.com.frank"];
    [userDefaults setObject:@3 forKey:@"open"];
    [userDefaults synchronize];
    NSString *bundlePath = [[NSBundle mainBundle] bundlePath];
    NSLog(@"bundlePath = %@",bundlePath);
    NSString *miniPath = [NSString stringWithFormat:@"%@/Contents/Library/LoginItems/FRShareUserDefaults mini.app",bundlePath];
    NSLog(@"miniPath = %@",miniPath);
    [[NSWorkspace sharedWorkspace] launchApplication:miniPath];
}



- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
