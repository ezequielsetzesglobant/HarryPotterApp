import Foundation
import Domain

protocol TabBarViewModelInputProtocol: AnyObject {
    func getHouse(id: String)
}

protocol TabBarViewModelOutputProtocol: AnyObject {
    var onFetchHouse: ((HouseViewData) -> Void)? { get set }
}

protocol TabBarViewModelProtocol: TabBarViewModelInputProtocol & TabBarViewModelOutputProtocol {
}
