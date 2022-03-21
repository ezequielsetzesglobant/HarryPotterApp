import Foundation

public struct HouseViewData {

    public let id: String
    public let name: String
    public let houseColours: String
    public let founder: String
    public let animal: String
    public let element: String
    public let ghost: String
    public let commonRoom: String
    public let heads: [HeadViewData]
    public let traits: [TraitViewData]

    public init(id: String,
                name: String,
                houseColours: String,
                founder: String,
                animal: String,
                element: String,
                ghost: String,
                commonRoom: String,
                heads: [HeadViewData],
                traits: [TraitViewData]) {
        self.id = id
        self.name = name
        self.houseColours = houseColours
        self.founder = founder
        self.animal = animal
        self.element = element
        self.ghost = ghost
        self.commonRoom = commonRoom
        self.heads = heads
        self.traits = traits
    }
}
