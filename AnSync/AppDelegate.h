//
//  AppDelegate.h
//  AnSync
//
//  Created by Marcus Ramsden on 05/03/2012.
//  Copyright (c) 2012 Beyond The Corner. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (assign) IBOutlet NSTextField *statusLabel;
@property (assign) IBOutlet NSButton *startScannerButton;
@property (assign) IBOutlet NSButton *stopScannerButton;

- (IBAction)startScanner:(id)sender;
- (IBAction)stopScanner:(id)sender;

@end
