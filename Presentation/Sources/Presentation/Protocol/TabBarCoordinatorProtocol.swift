import Foundation

protocol TabBarCoordinatorInputProtocol: AnyObject {
    func start(houseID: HousesID)
}

protocol TabBarCoordinatorOutputProtocol: AnyObject {
    var coordinator: CoordinatorProtocol { get set }
}

protocol TabBarCoordinatorProtocol: TabBarCoordinatorInputProtocol & TabBarCoordinatorOutputProtocol {
}
