import Foundation
import Domain

protocol TabBarViewModelInputProtocol: AnyObject {
    func getHouse()
}

protocol TabBarViewModelOutputProtocol: AnyObject {
    var onFetchHouse: (() -> Void)? { get set }
    var onError: ((String) -> Void)? { get set }
    var houseId: String { get set }
    var houseViewData: HouseViewData? { get set }
    var detailInformationViewModel: DetailInformationViewModelProtocol { get set }
    var headViewModel: HeadViewModelProtocol { get set }
    var traitViewModel: TraitViewModelProtocol { get set }
}

protocol TabBarViewModelProtocol: TabBarViewModelInputProtocol & TabBarViewModelOutputProtocol {
}
