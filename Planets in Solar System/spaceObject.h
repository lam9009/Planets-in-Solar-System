//
//  spaceObject.h
//  Planets in Solar System
//
//  Created by Alfred on 1/1/15.
//  Copyright (c) 2015 maptier. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface spaceObject : NSObject

//@property (strong, nonatomic)NSString *name;
@property (strong, nonatomic)UIImage *spaceImage;

-(id)initWithData:(NSDictionary *)data;

-(id)initWithImage:(UIImage *)Image;

//-(id)initWithData: (NSDictionary *)data andImage:(UIImage *)image;

@end
