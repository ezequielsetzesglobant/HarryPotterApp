import Foundation

public struct HouseViewData {

    let id: String
    let name: String
    let houseColours: String
    let founder: String
    let animal: String
    let element: String
    let ghost: String
    let commonRoom: String
    let heads: [HeadViewData]
    let traits: [TraitViewData]

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
