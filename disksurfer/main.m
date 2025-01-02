//
//  main.m
//  disksurfer
//
//  Created by Munkhbadral Altanpurev on 2025.01.02.
//

#import "AppDelegate.h"
#include <AppKit/AppKit.h>
#import <Cocoa/Cocoa.h>

int main(int argc, const char *argv[]) {
  @autoreleasepool {
    NSApplication *app = [NSApplication sharedApplication];
    AppDelegate *delegate = [[AppDelegate alloc] init];
    [app setDelegate:delegate];

    return NSApplicationMain(argc, argv);
  }
}
