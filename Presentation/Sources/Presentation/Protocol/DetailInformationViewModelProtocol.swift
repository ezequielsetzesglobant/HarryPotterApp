import Foundation

protocol DetailInformationViewModelInputProtocol: AnyObject {
    
}

protocol DetailInformationViewModelOutputProtocol: AnyObject {
    var houseDetailInformation: HouseDetailInformation { get }
}

protocol DetailInformationViewModelProtocol: DetailInformationViewModelInputProtocol
                                             & DetailInformationViewModelOutputProtocol {
}
