import Foundation

public protocol GetHouseUseCaseProtocol {
    
    var provider: ProviderProtocol { get }
    
    func execute(houseID: String, onCompletion: @escaping (Result<HouseViewData, UseCaseError>) -> Void)
}
