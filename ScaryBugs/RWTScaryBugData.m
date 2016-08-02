//
//  RWTScaryBugData.m
//  ScaryBugs
//
//  Created by Jorge Jordán Arenas on 04/02/14.
//
//

#import "RWTScaryBugData.h"

@implementation RWTScaryBugData

@synthesize title = _title;
@synthesize rating = _rating;
@synthesize description = _description;
@synthesize type = _type;

- (id)initWithTitle:(NSString*)title rating:(float)rating description:(NSString *)description type:(NSString *)type {
    if ((self = [super init])) {
        self.title = title;
        self.rating = rating;
        self.description = description;
        self.type = type;
    }
    return self;
}

@end
