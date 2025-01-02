//
//  AppDelegate.m
//  disksurfer
//
//  Created by Munkhbadral Altanpurev on 2025.01.02.
//

#import "AppDelegate.h"
#include <AppKit/AppKit.h>
#include <Foundation/Foundation.h>

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)notification {
  NSRect frame = NSMakeRect(0, 0, 1200, 800);
  self.window = [[NSWindow alloc]
      initWithContentRect:frame
                styleMask:(NSWindowStyleMaskTitled | NSWindowStyleMaskMiniaturizable | NSWindowStyleMaskClosable |
                           NSWindowStyleMaskResizable)
                  backing:NSBackingStoreBuffered
                    defer:NO];
  [self.window setTitle:@"DiskSurfer"];

  [self.window setLevel:NSFloatingWindowLevel];
  NSScreen *screen = [NSScreen mainScreen];
  NSRect screenFrame = [screen frame];
  CGFloat x = (screenFrame.size.width - frame.size.width) / 2;
  CGFloat y = (screenFrame.size.height - frame.size.height) / 2;
  [self.window setFrame:NSMakeRect(x, y, frame.size.width, frame.size.height)
                display:YES
                animate:YES];

  [self.window makeKeyAndOrderFront:nil];
}

@end
