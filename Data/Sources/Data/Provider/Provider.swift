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
    
    public func retrieveHouse(id: String, onCompletion: @escaping (Result<HouseViewData, ProviderError>) -> Void) {
        service.request(.readHouse(id: id)) { (result) in
            switch result {
            case .success(let response):
                if response.statusCode != Constants.statusCode {
                    do {
                        let house = try JSONDecoder().decode(House.self, from: response.data)
                        onCompletion(.success(house.transformHouseToHouseViewData()))
                    } catch {
                        onCompletion(.failure(.error("parsing error")))
                    }
                } else {
                    onCompletion(.failure(.error("house not found")))
                }
            case .failure:
                onCompletion(.failure(.error("request error")))
            }
        }
    }
}
