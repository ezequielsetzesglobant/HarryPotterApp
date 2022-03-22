import Foundation
import Domain
import Moya

private struct Constants {
    static let statusCode: Int = 404
}

public class Provider: ProviderProtocol {
    
    let service = MoyaProvider<Service>()
    
    public init() {
    }
    
    public func retrieveHouse(houseID: String, onCompletion: @escaping (Result<HouseViewData, ProviderError>) -> Void) {
        DispatchQueue.global(qos: .background).async { [weak self] in
            self?.service.request(.readHouse(id: houseID)) { (result) in
                switch result {
                case .success(let response):
                    guard response.statusCode != Constants.statusCode else {
                        onCompletion(.failure(.error("house not found")))
                        return
                    }
                    do {
                        let house = try JSONDecoder().decode(House.self, from: response.data)
                        onCompletion(.success(house.toDomain()))
                    } catch {
                        onCompletion(.failure(.error("parsing error")))
                    }
                case .failure:
                    onCompletion(.failure(.error("request error")))
                }
            }
        }
    }
}
