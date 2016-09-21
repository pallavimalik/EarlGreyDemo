
#import "BugsListViewController.h"
#import "BugDetailViewController.h"
#import "ScaryBugsDataSource.h"
#import "ScaryBugData.h"

@interface BugsListViewController () {
    NSMutableArray *_objects;
}
@end

@implementation BugsListViewController

@synthesize bugs = _bugs;

- (void)awakeFromNib
{
    [super awakeFromNib];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.title = @"Scary Bugs";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Table View

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _bugs.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView
                             dequeueReusableCellWithIdentifier:@"MyBasicCell"];
    ScaryBugsDataSource *bug = [self.bugs objectAtIndex:indexPath.row];
    cell.textLabel.text = bug.data.title;
    cell.accessibilityIdentifier = bug.data.title;
    cell.imageView.image = bug.thumbImage;
    return cell;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}

-(void)didMoveToParentViewController:(UIViewController *)parent{
    [self.tableView reloadData];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    BugDetailViewController *detailController = segue.destinationViewController;
    ScaryBugsDataSource *bug = [self.bugs objectAtIndex:self.tableView.indexPathForSelectedRow.row];
    detailController.detailItem = bug;
}


@end
