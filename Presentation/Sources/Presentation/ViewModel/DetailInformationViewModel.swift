import Foundation

class DetailInformationViewModel: DetailInformationViewModelProtocol {

    let houseDetailInformation: HouseDetailInformation
    
    init(houseDetailInformation: HouseDetailInformation) {
        self.houseDetailInformation = houseDetailInformation
    }
}
