import Foundation

class MockedNavigationController: UINavigationController {
    
    @objc var lastViewController: UIViewController? = nil
    @objc static let sharedInstance: MockedNavigationController = MockedNavigationController(rootViewController: UIViewController())
    
    override init(rootViewController: UIViewController) {
        super.init(rootViewController: rootViewController)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    override func pushViewController(viewController: UIViewController, animated: Bool) {
        lastViewController = viewController
    }
    
    func testViewController(viewController: UIViewController) {
        super.popToRootViewControllerAnimated(false)
        super.pushViewController(viewController, animated: false)
    }
}
