//
//  solarData.h
//  Planets in Solar System
//
//  Created by Alfred on 1/1/15.
//  Copyright (c) 2015 maptier. All rights reserved.
//

#import <Foundation/Foundation.h>

#define PLANET_NAME @"Planet Name"
#define PLANET_IMAGE @"Image of the Planet"

@interface solarData : NSObject

+ (NSArray *)allPlanets; // Returns an array of NSDictionaries

@end
