//
//  ASLibraryScanner.h
//  AnSync
//
//  Created by Marcus Ramsden on 05/03/2012.
//  Copyright (c) 2012 Beyond The Corner. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ASLibraryScanner : NSObject
{
    NSMutableDictionary *_libraryTrackLocations;
}

@property (readonly,getter=isRunning) BOOL running;

- (void)start;
- (void)stop;

@end
