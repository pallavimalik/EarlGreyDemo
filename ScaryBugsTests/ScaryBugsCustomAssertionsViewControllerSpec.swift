import XCTest

class ScaryBugsCustomAssertionsViewControllerSpec: XCTestCase {
    
    func testShouldShowBugDetails() {
        let potatoBug = EarlGrey().selectElementWithMatcher(grey_accessibilityID("Potato Bug"))
        potatoBug.assertWithMatcher(grey_sufficientlyVisible())
        potatoBug.performAction(grey_tap())
        
        let titleLabel = EarlGrey().selectElementWithMatcher(grey_accessibilityID("title_label"))
        titleLabel.assertWithMatcher(grey_sufficientlyVisible())
        titleLabel.assertWithMatcher(grey_text("Potato Bug"))
        
            EarlGrey().selectElementWithMatcher(grey_allOfMatchers(grey_accessibilityID("title_label"),grey_titleText())).assertWithMatcher(grey_notNil())
    }
    
    func grey_titleText() -> GREYMatcher {
        let matches: MatchesBlock = { (element: AnyObject!) -> Bool in
            if let field = element as? UITextField {
                let titleText = field.text
                return titleText == "Potato Bug" ? true : false
            }
            return false
        }
        
        let description: DescribeToBlock = { (description: GREYDescription!) -> Void in
            guard let description = description else {
                return
            }
            description.appendText("Placeholder Text")
        }
        
        return GREYElementMatcherBlock.init(matchesBlock: matches, descriptionBlock: description)
    }
}
