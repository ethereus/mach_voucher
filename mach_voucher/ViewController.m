//
//  ViewController.m
//  mach_voucher
//
//  Created by yumiistar on 1/24/19.
//  Copyright © 2019 yumiistar. All rights reserved.
//

#import "ViewController.h"
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

int main(void) {
    @autoreleasepool {
        if (exploit() != KERN_FAILURE) {
            NSLog(@"Pwned ツ\n");
        }
    }
}


@end

