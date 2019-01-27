//
//  ViewController.m
//  mach_voucher
//
//  Created by yumiistar on 1/24/19.
//  Copyright © 2019 yumiistar. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#include "exploit.h"

#include <Foundation/Foundation.h>
#include <mach/mach.h>
#include <string.h>
#include <unistd.h>

@interface ViewController()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    if (exploit() != MACH_PORT_NULL) {
        printf("Pwned ツ\n");
    }
}

int main(int argc, char * argv[]) {
    @autoreleasepool {
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}


@end
