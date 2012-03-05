//
//  ASLibraryScanner.m
//  AnSync
//
//  Created by Marcus Ramsden on 05/03/2012.
//  Copyright (c) 2012 Beyond The Corner. All rights reserved.
//

#import "ASLibraryScanner.h"

@implementation ASLibraryScanner

@synthesize running = _running;

- (void)start
{
    _running = YES;
    
    if ([NSThread mainThread]) {
        [self performSelectorInBackground:@selector(start) withObject:nil];
    }
}

- (void)stop
{
    _running = NO;
}

@end
