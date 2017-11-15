//
//  ViewController.m
//  FRShareUserDefaults mini
//
//  Created by Fan's iMac  on 2017/11/15.
//  Copyright © 2017年 Fan's iMac . All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSButton *button = [[NSButton alloc] initWithFrame:NSMakeRect(50, 50, 100, 100)];
    [button setTitle:@"This second button"];
    button.target = self;
    button.action = @selector(btnPressed:);
    [button setKeyEquivalent:@"\e"];  //按 esc 键会自动触发 action.
    [self.view addSubview:button];
}

- (void)btnPressed:(id)sender {
    NSUserDefaults *userDefaults = [[NSUserDefaults alloc] initWithSuiteName:@"DZQ5YNVEU2.com.frank"];
    NSNumber *number = [userDefaults objectForKey:@"open"];
    NSString *string = nil;
    if (number) {
        string = [NSString stringWithFormat:@"number is %d",[number integerValue]];
    } else {
        string = @"number is nil";
    }

    NSAlert *alert = [[NSAlert alloc] init];
    [alert addButtonWithTitle:@"OK"];
    [[alert.buttons objectAtIndex:0] setKeyEquivalent:@"\r"]; // Enter OK
    [alert setMessageText:@"This is the content"];
    [alert setInformativeText:string];
    [alert setAlertStyle:NSAlertStyleWarning];
    [alert runModal];
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
