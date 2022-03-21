import UIKit

// MARK: - Constants

public struct Color {
    static let backgroundColor = UIColor(red: 0.82, green: 0.70, blue: 0.11, alpha: 1.0)
    public static let navigationBarBlack = UIColor(red: 0.27, green: 0.27, blue: 0.27, alpha: 0.5)
    static let lightGray = UIColor(red: 0.4, green: 0.4, blue: 0.4, alpha: 1.0)
}

struct Strings {
    static let coderNotImplementedError: String = "init(coder:) has not been implemented"
    static let emptyString: String = ""
    static let okMessage: String = "Ok"
}

public enum Houses: String {
    case griffindor = "0367baf3-1cb6-4baf-bede-48e17e1cd005"
    case slytherin = "a9704c47-f92e-40a4-8771-ed1899c9b9c1"
    case hufflepuff = "85af6295-fd01-4170-a10b-963dd51dce14"
    case ravenclaw = "805fd37a-65ae-4fe5-b336-d767b8b7c73a"
}
