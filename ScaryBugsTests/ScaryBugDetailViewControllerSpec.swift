
import Foundation
import XCTest

class ScaryBugDetailControllerSpec: XCTestCase {
    func testScaryBugDetails() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let scaryBugDetailViewController = storyboard.instantiateViewControllerWithIdentifier("scaryBugDetailVC") as! BugDetailViewController
        let bug = ScaryBugsDataSource(title: "Potato Bug", rating: 4, thumbImage: UIImage(named: "potatoBugThumb.jpg")!, fullImage: UIImage(named: "potatoBug.jpg")!, description: "blahh blahh", type: "bug")
        scaryBugDetailViewController.detailItem = bug
        if let window = UIApplication.sharedApplication().keyWindow {
            let navigationController = MockedNavigationController.sharedInstance
            window.rootViewController = navigationController
            navigationController.testViewController(scaryBugDetailViewController)
        }
        
        let titleLabel = EarlGrey().selectElementWithMatcher(grey_accessibilityID("title_label"))
        titleLabel.assertWithMatcher(grey_sufficientlyVisible())
        titleLabel.assertWithMatcher(grey_text("Potato Bug"))
        titleLabel.performAction(grey_tap())
        titleLabel.performAction(grey_clearText())
        titleLabel.performAction(grey_typeText("Bug"))
    }
}