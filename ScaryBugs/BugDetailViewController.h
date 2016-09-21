
#import <UIKit/UIKit.h>
#import "RWTRateView.h"

@class ScaryBugsDataSource;

@interface BugDetailViewController : UIViewController <UITextFieldDelegate, RWTRateViewDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (strong, nonatomic) ScaryBugsDataSource *detailItem;
@property (strong, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@property (weak, nonatomic) IBOutlet UITextField *titleField;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *descriptionLabel;
@property (weak, nonatomic) IBOutlet UILabel *typeLabel;
@property (weak, nonatomic) IBOutlet UILabel *typeTitleLabel;

- (IBAction)titleFieldTextChanged:(id)sender;

@end
