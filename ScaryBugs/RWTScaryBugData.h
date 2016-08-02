//
//  RWTScaryBugData.h
//  ScaryBugs
//
//  Created by Jorge Jordán Arenas on 04/02/14.
//
//

#import <Foundation/Foundation.h>

@interface RWTScaryBugData : NSObject

@property (strong) NSString *title;
@property (assign) float rating;
@property (strong) NSString *description;
@property (strong) NSString *type;

- (id)initWithTitle:(NSString*)title rating:(float)rating description:(NSString *)description type:(NSString *)type ;

@end