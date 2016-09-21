
#import <Foundation/Foundation.h>

@interface ScaryBugData : NSObject

@property (strong) NSString *title;
@property (assign) float rating;
@property (strong) NSString *description;
@property (strong) NSString *type;

- (id)initWithTitle:(NSString*)title rating:(float)rating description:(NSString *)description type:(NSString *)type ;

@end