import Foundation

class DetailInformationViewModel: DetailInformationViewModelProtocol {

    var houseDetailInformation: HouseDetailInformation
    
    init(houseDetailInformation: HouseDetailInformation) {
        self.houseDetailInformation = houseDetailInformation
    }
}
