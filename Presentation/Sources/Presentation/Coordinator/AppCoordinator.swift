import UIKit

public class AppCoordinator: CoordinatorProtocol {

    public var rootViewController: UINavigationController

    public init(rootViewController: UINavigationController) {
        self.rootViewController = rootViewController
    }

    public func start() {
        let splashScreenViewController = SplashScreenViewController()
        splashScreenViewController.coordinator = self
        rootViewController.pushViewController(splashScreenViewController, animated: false)
    }

    public func goToMainViewController() {
        let mainViewController = MainViewController(coordinator: self)
        rootViewController.pushViewController(mainViewController, animated: false)
    }
}
