import Foundation
import Domain

protocol TabBarViewModelInputProtocol: AnyObject {
    func getHouse()
}

protocol TabBarViewModelOutputProtocol: AnyObject {
    var onFetchHouse: (() -> Void)? { get set }
    var onError: ((String) -> Void)? { get set }
    var houseID: String { get set }
    var houseViewData: HouseViewData? { get set }
    var detailInformationViewModel: DetailInformationViewModelProtocol { get }
    var headViewModel: HeadViewModelProtocol { get }
    var traitViewModel: TraitViewModelProtocol { get }
}

protocol TabBarViewModelProtocol: TabBarViewModelInputProtocol & TabBarViewModelOutputProtocol {
}
