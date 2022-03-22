import Foundation

public enum ProviderError: Error, Equatable {
    case error(String)
}

public protocol ProviderProtocol {
    
    func retrieveHouse(houseID: String, onCompletion: @escaping (Result<HouseViewData, ProviderError>) -> Void)
}
