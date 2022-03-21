import Foundation

public protocol GetHouseUseCaseProtocol {
    
    var provider: ProviderProtocol { get }
    
    func execute(id: String, onCompletion: @escaping (Result<HouseViewData, UseCaseError>) -> Void)
}
