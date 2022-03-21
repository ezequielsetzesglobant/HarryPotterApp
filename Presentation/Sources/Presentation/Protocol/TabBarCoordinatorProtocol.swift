import Foundation

protocol TabBarCoordinatorInputProtocol: AnyObject {
    func start(house: Houses)
}

protocol TabBarCoordinatorOutputProtocol: AnyObject {
    var coordinator: CoordinatorProtocol { get set }
}

protocol TabBarCoordinatorProtocol: TabBarCoordinatorInputProtocol & TabBarCoordinatorOutputProtocol {
}
