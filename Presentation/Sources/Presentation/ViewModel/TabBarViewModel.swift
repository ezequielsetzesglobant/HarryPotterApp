import Foundation
import Domain

// MARK: - Class

class TabBarViewModel: TabBarViewModelProtocol {
    
    // MARK: - Properties
    
    private var useCase: GetHouseUseCaseProtocol
    var onFetchHouse: (() -> Void)?
    var onError: ((String) -> Void)?
    var houseId: String
    var houseViewData: HouseViewData?
    lazy var detailInformationViewModel: DetailInformationViewModelProtocol = {
        return DetailInformationViewModel(
            houseDetailInformation: HouseDetailInformation(name: houseViewData?.name ?? "",
                                                           houseColours: houseViewData?.houseColours ?? "",
                                                           founder: houseViewData?.founder ?? "",
                                                           animal: houseViewData?.animal ?? "",
                                                           element: houseViewData?.element ?? "",
                                                           ghost: houseViewData?.ghost ?? "",
                                                           commonRoom: houseViewData?.commonRoom ?? ""))
    }()
    lazy var headViewModel: HeadViewModelProtocol = {
        return HeadViewModel(heads: houseViewData?.heads ?? [])
    }()
    lazy var traitViewModel: TraitViewModelProtocol = {
        return TraitViewModel(traits: houseViewData?.traits ?? [])
    }()
    
    // MARK: - Initialization
    
    init(useCase: GetHouseUseCaseProtocol, houseId: String) {
        self.useCase = useCase
        self.houseId = houseId
        getHouse()
    }
    
    func getHouse() {
        DispatchQueue.global(qos: .background).async {
            self.useCase.execute(id: self.houseId) { result in
                DispatchQueue.main.async {
                    switch result {
                    case .success(let houseViewData):
                        self.houseViewData = houseViewData
                        self.onFetchHouse?()
                    case .failure(let error):
                        self.onError?(error.localizedDescription)
                    }
                }
            }
        }
    }
}
