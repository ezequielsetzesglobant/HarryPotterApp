import Foundation
import Moya

private struct Constants {
    static let baseUrl: String = "https://wizard-world-api.herokuapp.com"
    static let endpoint: String = "/Houses"
    static let headerContentTyper: String = "Content-Typer"
    static let headerApplicationJson: String = "application/json"
    static let slash: String = "/"
}

enum Service {
    case readHouse(id: String)
}

extension Service: TargetType {
    
    var baseURL: URL {
        return URL(string: Constants.baseUrl)!
    }
    
    var path: String {
        switch self {
        case .readHouse(let id):
            return "\(Constants.endpoint)\(Constants.slash)\(id)"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .readHouse:
            return .get
        }
    }
    
    var task: Task {
        switch self {
        case .readHouse:
            return .requestPlain
        }
    }
    
    var headers: [String: String]? {
        return [Constants.headerContentTyper: Constants.headerApplicationJson]
    }
}
