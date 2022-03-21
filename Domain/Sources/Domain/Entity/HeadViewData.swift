import Foundation

public struct HeadViewData {

    let id: String
    let firstName: String
    let lastName: String

    public init(id: String,
                firstName: String,
                lastName: String) {
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
    }
}
