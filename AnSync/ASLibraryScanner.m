//
//  ASLibraryScanner.m
//  AnSync
//
//  Created by Marcus Ramsden on 05/03/2012.
//  Copyright (c) 2012 Beyond The Corner. All rights reserved.
//

#import "ASLibraryScanner.h"
#import "EyeTunes.h"

@implementation ASLibraryScanner

@synthesize running = _running;

- (void)start
{
    if ([NSThread isMainThread]) {
        [self performSelectorInBackground:@selector(start) withObject:nil];
        return;
    }
    
    [self willChangeValueForKey:@"running"];
    _running = YES;
    [self didChangeValueForKey:@"running"];
    
    EyeTunes *eyeTunes = [EyeTunes sharedInstance];
    ETPlaylist *rootPlaylist = [eyeTunes rootUserPlaylist];
    for (ETTrack *track in [rootPlaylist tracks]) {
        if (!_running) {
            break;
        }
        
        NSLog(@"Track Name: %@", track.name);
    }
    
    [self willChangeValueForKey:@"running"];
    _running = NO;
    [self didChangeValueForKey:@"running"];
}

- (void)stop
{
    [self willChangeValueForKey:@"running"];
    _running = NO;
    [self didChangeValueForKey:@"running"];
}

@end
