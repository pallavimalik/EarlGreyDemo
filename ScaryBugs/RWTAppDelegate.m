#import "RWTAppDelegate.h"
#import "BugsListViewController.h"
#import "ScaryBugsDataSource.h"

@implementation RWTAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    ScaryBugsDataSource *bug1 = [[ScaryBugsDataSource alloc] initWithTitle:@"Potato Bug" rating:4 thumbImage:[UIImage imageNamed:@"potatoBugThumb.jpg"] fullImage:[UIImage imageNamed:@"potatoBug.jpg"] description:@"They are a group of large, flightless insects of the genus Stenopelmatus. They are native to the western United States and parts of Mexico." type:@"Insecta"];
    
    ScaryBugsDataSource *bug2 = [[ScaryBugsDataSource alloc] initWithTitle:@"House Centipede" rating:3 thumbImage:[UIImage imageNamed:@"centipedeThumb.jpg"] fullImage:[UIImage imageNamed:@"centipede.jpg"] description:@"Centipedes are elongated, flattened arthropods with numerous legs – one pair per body segment." type:@"Chilopoda"];
    
    ScaryBugsDataSource *bug3 = [[ScaryBugsDataSource alloc] initWithTitle:@"Wolf Spider" rating:5 thumbImage:[UIImage imageNamed:@"wolfSpiderThumb.jpg"] fullImage:[UIImage imageNamed:@"wolfSpider.jpg"] description:@"Wolf spiders are members of the family Lycosidae. They are robust and agile hunters with excellent eyesight." type:@"Arachnida"];
    
    ScaryBugsDataSource *bug4 = [[ScaryBugsDataSource alloc] initWithTitle:@"Lady Bug" rating:1 thumbImage:[UIImage imageNamed:@"ladybugThumb.jpg"] fullImage:[UIImage imageNamed:@"ladybug.jpg"] description:@"Coccinellidae is a widespread family of small beetles ranging from 0.8-18mm. Commonly yellow, orange, or red with small black spots on their wing." type:@"Insecta"];
    
    NSMutableArray *bugs = [NSMutableArray arrayWithObjects:bug1, bug2, bug3, bug4, nil];
    
    UINavigationController *navController = (UINavigationController *) self.window.rootViewController;
    BugsListViewController *masterController = [navController.viewControllers objectAtIndex:0];
    masterController.bugs = bugs;
    
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
