import Foundation

protocol DetailInformationViewModelInputProtocol: AnyObject {
    
}

protocol DetailInformationViewModelOutputProtocol: AnyObject {
    var houseDetailInformation: HouseDetailInformation { get set }
}

protocol DetailInformationViewModelProtocol: DetailInformationViewModelInputProtocol
                                             & DetailInformationViewModelOutputProtocol {
}
