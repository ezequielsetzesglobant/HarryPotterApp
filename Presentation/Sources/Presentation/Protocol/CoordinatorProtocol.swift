import UIKit

public protocol CoordinatorProtocol {
    var rootViewController: UINavigationController { get }
    func start()
    func goToMainViewController()
    func goToTabBarController()
}
