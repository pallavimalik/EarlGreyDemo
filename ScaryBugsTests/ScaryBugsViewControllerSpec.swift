import XCTest

class ScaryBugsViewControllerSpec: XCTestCase {
    
    func testShouldShowBugDetails() {
        let potatoBug = EarlGrey().selectElementWithMatcher(grey_accessibilityID("Potato Bug"))
        potatoBug.assertWithMatcher(grey_sufficientlyVisible())
        potatoBug.performAction(grey_tap())

        let titleLabel = EarlGrey().selectElementWithMatcher(grey_accessibilityID("title_label"))
        titleLabel.assertWithMatcher(grey_sufficientlyVisible())
        titleLabel.assertWithMatcher(grey_text("Potato Bug"))
        titleLabel.performAction(grey_tap())
        titleLabel.performAction(grey_clearText())
        titleLabel.performAction(grey_typeText("Jerusalem Crickets"))

        let descriptionText = "They are a group of large, flightless insects of the genus Stenopelmatus. They are native to the western United States and parts of Mexico."
        EarlGrey().selectElementWithMatcher(grey_accessibilityID("description_label"))
            .assertWithMatcher(grey_text(descriptionText))
        
        EarlGrey().selectElementWithMatcher(grey_accessibilityID("bug_type_title"))
            .assertWithMatcher(grey_text("Type:"))
        EarlGrey().selectElementWithMatcher(grey_accessibilityID("bug_type"))
            .assertWithMatcher(grey_text("Insecta"))

        //Custom Assertions

//        EarlGrey().selectElementWithMatcher(grey_allOfMatchers(grey_accessibilityID("title_label"),grey_titleText()))
//            .assertWithMatcher(grey_notNil())



    }
    
    func grey_titleText() -> GREYMatcher {
        let matches: MatchesBlock = { (element: AnyObject!) -> Bool in
            if let field = element as? UITextField {
                let titleText = field.text
                return titleText == "Jerusalem crickets" ? true : false
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
