import Foundation
import Domain

// MARK: - Class

class MockProviderSucces: ProviderProtocol {
    
    func retrieveHouse(houseID: String, onCompletion: @escaping (Result<HouseViewData, ProviderError>) -> Void) {
        onCompletion(.success(HouseViewData(id: "id",
                                            name: "name",
                                            houseColours: "houseColours",
                                            founder: "founder",
                                            animal: "animal",
                                            element: "element",
                                            ghost: "ghost",
                                            commonRoom: "commonRoom",
                                            heads: [HeadViewData(id: "id",
                                                                 firstName: "firstName",
                                                                 lastName: "lastName")],
                                            traits: [TraitViewData(id: "id",
                                                                   name: "name")])))
    }
}

// MARK: - Class

class MockProviderFailure: ProviderProtocol {
    
    func retrieveHouse(houseID: String, onCompletion: @escaping (Result<HouseViewData, ProviderError>) -> Void) {
        onCompletion(.failure(.error("error")))
    }
}
