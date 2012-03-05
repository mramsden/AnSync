//
//  ASSyncService.m
//  AnSync
//
//  Created by Marcus Ramsden on 05/03/2012.
//  Copyright (c) 2012 Beyond The Corner. All rights reserved.
//

#import "ASSyncService.h"

@implementation ASSyncService

- (void)start
{
    if (nil == _service) {
        _service = [[NSNetService alloc] initWithDomain:@"" 
                                                   type:@"_ansync._tcp" 
                                                   name:@"AnSync Server" 
                                                   port:12345];
    }
    
    [_service publish];
}

- (void)stop
{
    [_service stop];
}

@end
