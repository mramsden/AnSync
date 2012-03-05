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
    if (nil == _libraryScanner) {
        _libraryScanner = [[ASLibraryScanner alloc] init];
    }
    
    [_libraryScanner addObserver:self forKeyPath:@"running" options:0 context:nil];
    [_libraryScanner start];
}

- (IBAction)stopScanner:(id)sender
{
    [_libraryScanner stop];
    [_libraryScanner removeObserver:self forKeyPath:@"running"];
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    if ([@"running" isEqualToString:keyPath] && [object isEqual:_libraryScanner]) {
        if (_libraryScanner.running) {
            [_startScannerButton setEnabled:NO];
            [_stopScannerButton setEnabled:YES];
            [_statusLabel setTitleWithMnemonic:@"Scanning..."];
        } else {
            [_startScannerButton setEnabled:YES];
            [_stopScannerButton setEnabled:NO];
            [_statusLabel setTitleWithMnemonic:@"Not Scanning"];
        }
    }
}

- (void)dealloc
{
    [_libraryScanner removeObserver:self forKeyPath:@"running"];
}

@end
