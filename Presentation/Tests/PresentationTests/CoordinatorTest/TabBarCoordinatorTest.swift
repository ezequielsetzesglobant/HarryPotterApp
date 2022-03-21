import XCTest
@testable import Presentation

// MARK: - Class

class TabBarCoordinatorTest: XCTestCase {

    // MARK: - Properties

    var coordinator: TabBarCoordinatorProtocol!

    // MARK: - Setup

    override func setUpWithError() throws {
        coordinator = TabBarCoordinator(coordinator: AppCoordinator(rootViewController: UINavigationController()))
    }
    
    func testStart() throws {
        let predicate = NSPredicate { testVC, _ -> Bool in
            guard let testVC = testVC as? UINavigationController,
                  (testVC.topViewController as? TabBarViewController) != nil else {
                return false
            }
            return true
        }
        let presentExpectation = expectation(
            for: predicate,
            evaluatedWith: coordinator.coordinator.rootViewController,
            handler: nil
        )

        coordinator.start(house: .griffindor)

        wait(for: [presentExpectation], timeout: 5)
    }
}
