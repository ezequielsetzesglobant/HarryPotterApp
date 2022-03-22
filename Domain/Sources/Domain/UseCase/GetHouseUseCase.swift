import Foundation

public enum UseCaseError: Error, Equatable {
    case error(String)
}

public class GetHouseUseCase: GetHouseUseCaseProtocol {
    
    public var provider: ProviderProtocol
    
    public init(provider: ProviderProtocol) {
        self.provider = provider
    }
    
    public func execute(houseID: String, onCompletion: @escaping (Result<HouseViewData, UseCaseError>) -> Void) {
        provider.retrieveHouse(houseID: houseID) { result in
            switch result {
            case .success(let houseViewData):
                onCompletion(.success(houseViewData))
            case .failure(let error):
                onCompletion(.failure(.error(error.localizedDescription)))
            }
        }
    }
}
