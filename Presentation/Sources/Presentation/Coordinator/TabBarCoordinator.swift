import UIKit
import Domain
import Data
//import DI

private struct Constants {
    static let tabBarSelectedIndex: Int = 0
}

// MARK: - Class

public class TabBarCoordinator: TabBarCoordinatorProtocol {

    // MARK: - Properties

    public var coordinator: CoordinatorProtocol
    lazy var tabBarViewController: TabBarViewController = {
        return TabBarViewController(viewModel: TabBarViewModel(useCase: GetHouseUseCase(provider: Provider())))
        //return InjectorPresentation.shared.getTabBarViewController
    }()
    lazy var detailInformationViewController: DetailInformationViewController = {
        return DetailInformationViewController(coordinator: self)
    }()
    lazy var headViewController: HeadViewController = {
        return HeadViewController(coordinator: self)
    }()
    lazy var traitViewController: TraitViewController = {
        return TraitViewController(coordinator: self)
    }()

    // MARK: - Initialization

    public init(coordinator: CoordinatorProtocol) {
        self.coordinator = coordinator
    }

    public func start(id: String) {
        setUpTabs(id: id)
    }
    
    private func setUpTabs(id: String) {
        tabBarViewController.houseId = id
        tabBarViewController.setViewControllers([detailInformationViewController,
                                                 headViewController,
                                                 traitViewController],
                                                animated: false)
        tabBarViewController.selectedIndex = Constants.tabBarSelectedIndex
        coordinator.rootViewController.pushViewController(tabBarViewController, animated: false)
    }
}
