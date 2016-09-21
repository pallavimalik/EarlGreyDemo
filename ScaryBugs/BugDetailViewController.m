
#import "BugDetailViewController.h"
#import "ScaryBugsDataSource.h"
#import "ScaryBugData.h"
#import "RWTUIImageExtras.h"

@interface BugDetailViewController ()
- (void)configureView;
@end

@implementation BugDetailViewController

#pragma mark - Managing the detail item

- (void)setDetailItem:(id)newDetailItem
{
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}

- (void)configureView
{
    // Update the user interface for the detail item.
    
    if (self.detailItem) {
        self.titleField.text = self.detailItem.data.title;
        self.titleField.accessibilityIdentifier = @"title_label";
        self.imageView.image = self.detailItem.fullImage;
        self.descriptionLabel.text = self.detailItem.data.description;
        self.descriptionLabel.accessibilityIdentifier = @"description_label";
        self.typeLabel.text = self.detailItem.data.type;
        self.typeTitleLabel.accessibilityIdentifier = @"bug_type";
        self.typeTitleLabel.accessibilityIdentifier = @"bug_type_title";
    }
}

- (BOOL)shouldAutorotateToInterfaceOrientation {
    return YES;
}

- (IBAction)titleFieldTextChanged:(id)sender {
    self.detailItem.data.title = self.titleField.text;
}

#pragma mark UITextFieldDelegate

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    return YES;
}

#pragma mark RWTRateViewDelegate

- (void)rateView:(RWTRateView *)rateView ratingDidChange:(float)rating {
    self.detailItem.data.rating = rating;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
@end
