import XCTest
@testable import Presentation

// MARK: - Class

class AppCoordinatorTest: XCTestCase {

    // MARK: - Properties

    var coordinator: CoordinatorProtocol!

    // MARK: - Setup

    override func setUpWithError() throws {
        coordinator = AppCoordinator(rootViewController: UINavigationController())
    }
    
    func testStart() throws {
        let predicate = NSPredicate { testVC, _ -> Bool in
            guard let testVC = testVC as? UINavigationController,
                  (testVC.topViewController as? SplashScreenViewController) != nil else {
                return false
            }
            return true
        }
        let presentExpectation = expectation(
            for: predicate,
            evaluatedWith: coordinator.rootViewController,
            handler: nil
        )

        coordinator.start()

        wait(for: [presentExpectation], timeout: 5)
    }
    
    func testGoToMainController() throws {
        let predicate = NSPredicate { testVC, _ -> Bool in
            guard let testVC = testVC as? UINavigationController,
                  (testVC.topViewController as? MainViewController) != nil else {
                return false
            }
            return true
        }
        let presentExpectation = expectation(
            for: predicate,
            evaluatedWith: coordinator.rootViewController,
            handler: nil
        )

        coordinator.goToMainViewController()

        wait(for: [presentExpectation], timeout: 5)
    }

    func testGoToTaBarController() throws {
        let predicate = NSPredicate { testVC, _ -> Bool in
            guard let testVC = testVC as? UINavigationController,
                  (testVC.topViewController as? TabBarViewController) != nil else {
                return false
            }
            return true
        }
        let presentExpectation = expectation(
            for: predicate,
            evaluatedWith: coordinator.rootViewController,
            handler: nil
        )

        coordinator.goToTabBarController(house: .griffindor)

        wait(for: [presentExpectation], timeout: 5)
    }
}
