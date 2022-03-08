import UIKit

public protocol CoordinatorProtocol {
    func start()
    func goToMainViewController()
    var rootViewController: UINavigationController { get }
}
