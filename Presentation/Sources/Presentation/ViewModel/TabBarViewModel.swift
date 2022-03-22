import Foundation
import Domain

// MARK: - Class

class TabBarViewModel: TabBarViewModelProtocol {
    
    // MARK: - Properties
    
    private var useCase: GetHouseUseCaseProtocol
    var onFetchHouse: (() -> Void)?
    var onError: ((String) -> Void)?
    var houseID: String
    var houseViewData: HouseViewData?
    lazy var detailInformationViewModel: DetailInformationViewModelProtocol = {
        return DetailInformationViewModel(
            houseDetailInformation: HouseDetailInformation(name: houseViewData?.name ?? Strings.emptyString,
                                                           houseColours: houseViewData?.houseColours ??
                                                            Strings.emptyString,
                                                           founder: houseViewData?.founder ?? Strings.emptyString,
                                                           animal: houseViewData?.animal ?? Strings.emptyString,
                                                           element: houseViewData?.element ?? Strings.emptyString,
                                                           ghost: houseViewData?.ghost ?? Strings.emptyString,
                                                           commonRoom: houseViewData?.commonRoom ??
                                                            Strings.emptyString))
    }()
    lazy var headViewModel: HeadViewModelProtocol = {
        return HeadViewModel(heads: houseViewData?.heads ?? ConstantsUtils.headViewDataArrayDefault)
    }()
    lazy var traitViewModel: TraitViewModelProtocol = {
        return TraitViewModel(traits: houseViewData?.traits ?? ConstantsUtils.traitViewDataArrayDefault)
    }()
    
    // MARK: - Initialization
    
    init(useCase: GetHouseUseCaseProtocol, houseID: String) {
        self.useCase = useCase
        self.houseID = houseID
        getHouse()
    }
    
    func getHouse() {
        useCase.execute(houseID: self.houseID) { result in
            DispatchQueue.main.async { [weak self] in
                switch result {
                case .success(let houseViewData):
                    self?.houseViewData = houseViewData
                    self?.onFetchHouse?()
                case .failure(let error):
                    self?.onError?(error.localizedDescription)
                }
            }
        }
    }
}
