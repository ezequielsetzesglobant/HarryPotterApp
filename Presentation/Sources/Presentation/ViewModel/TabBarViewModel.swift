import Foundation
import Domain

// MARK: - Class

class TabBarViewModel: TabBarViewModelProtocol {
    
    // MARK: - Properties
    
    private var useCase: GetHouseUseCaseProtocol
    var onFetchHouse: ((HouseViewData) -> Void)?
    
    // MARK: - Initialization
    
    init(useCase: GetHouseUseCaseProtocol) {
        self.useCase = useCase
    }
    
    func getHouse(id: String) {
        DispatchQueue.global(qos: .background).async {
            self.useCase.execute(id: id) { result in
                DispatchQueue.main.async {
                    switch result {
                    case .success(let houseViewData):
                        self.onFetchHouse?(houseViewData)
                    case .failure(let error):
                        print(error.localizedDescription)
                    }
                }
            }
        }
    }
}
