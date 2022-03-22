import Foundation

public struct HeadViewData {

    public let id: String
    public let firstName: String
    public let lastName: String

    public init(id: String,
                firstName: String,
                lastName: String) {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
    }
}
