import Foundation

protocol TabBarCoordinatorInputProtocol: AnyObject {
    func start(id: String)
}

protocol TabBarCoordinatorOutputProtocol: AnyObject {
    var coordinator: CoordinatorProtocol { get set }
}

protocol TabBarCoordinatorProtocol: TabBarCoordinatorInputProtocol & TabBarCoordinatorOutputProtocol {
}
