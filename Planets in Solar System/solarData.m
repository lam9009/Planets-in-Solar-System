//
//  solarData.m
//  Planets in Solar System
//
//  Created by Alfred on 1/1/15.
//  Copyright (c) 2015 maptier. All rights reserved.
//

#import "solarData.h"

@implementation solarData

+ (NSArray *)allPlanets
{
    NSMutableArray *solarInfo = [@[] mutableCopy];
    
    NSDictionary *mercuryDictionary = @{PLANET_NAME : @"Mercury"};[solarInfo addObject:mercuryDictionary];
    
    NSDictionary *venusDictionary = @{PLANET_NAME : @"Venus"};
    [solarInfo addObject:venusDictionary];
    
    NSDictionary *earthDictionary = @{PLANET_NAME : @"Earth"};
    [solarInfo addObject:earthDictionary];
    
    NSDictionary *marsDictionary = @{PLANET_NAME : @"Mars"};
    [solarInfo addObject:marsDictionary];
    
    NSDictionary *jupiterDictionary = @{PLANET_NAME : @"Jupiter"};
    [solarInfo addObject:jupiterDictionary];
    
    NSDictionary *saturnDictionary = @{PLANET_NAME : @"Saturn"};
    [solarInfo addObject:saturnDictionary];
    
    NSDictionary *uranusDictionary = @{PLANET_NAME : @"Uranus"};
    [solarInfo addObject:uranusDictionary];
    
    NSDictionary *neptuneDictionary = @{PLANET_NAME : @"Neptune"};
    [solarInfo addObject:neptuneDictionary];
    
    return [solarInfo copy];
}

@end
