//
//  ASSyncService.h
//  AnSync
//
//  Created by Marcus Ramsden on 05/03/2012.
//  Copyright (c) 2012 Beyond The Corner. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ASSyncService : NSObject
{
    NSNetService *_service;
}

- (void)start;
- (void)stop;

@end
