
#import <Foundation/Foundation.h>

@class ScaryBugData;

@interface ScaryBugsDataSource : NSObject

@property (strong) ScaryBugData *data;
@property (strong) UIImage *thumbImage;
@property (strong) UIImage *fullImage;

- (id)initWithTitle:(NSString*)title rating:(float)rating thumbImage:(UIImage *)thumbImage fullImage:(UIImage *)fullImage description:(NSString*)description type:(NSString*)type;

@end