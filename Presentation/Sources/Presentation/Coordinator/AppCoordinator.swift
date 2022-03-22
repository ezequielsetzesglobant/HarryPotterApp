import UIKit

// MARK: - Class

public class AppCoordinator: CoordinatorProtocol {
    
    // MARK: - Properties
    
    public var rootViewController: UINavigationController
    lazy var tabBarCoordinator: TabBarCoordinatorProtocol = {
        return TabBarCoordinator(coordinator: self)
    }()
    
    // MARK: - Initialization

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
    
    public func goToTabBarController(houseID: HousesID) {
        tabBarCoordinator.start(houseID: houseID)
    }
}
