//
//  AppDelegate.m
//  AnSync
//
//  Created by Marcus Ramsden on 05/03/2012.
//  Copyright (c) 2012 Beyond The Corner. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

@synthesize window = _window;
@synthesize statusLabel = _statusLabel;
@synthesize startScannerButton = _startScannerButton;
@synthesize stopScannerButton = _stopScannerButton;

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    [_startScannerButton setEnabled:YES];
    [_stopScannerButton setEnabled:NO];
}

- (IBAction)startScanner:(id)sender
{
    [_startScannerButton setEnabled:NO];
    [_stopScannerButton setEnabled:YES];
    [_statusLabel setTitleWithMnemonic:@"Scanning..."];
}

- (IBAction)stopScanner:(id)sender
{
    [_startScannerButton setEnabled:YES];
    [_stopScannerButton setEnabled:NO];
    [_statusLabel setTitleWithMnemonic:@"Not Scanning"];
}

@end
