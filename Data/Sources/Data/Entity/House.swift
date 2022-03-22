import Foundation

struct House: Decodable {
    
    let id: String
    let name: String?
    let houseColours: String?
    let founder: String?
    let animal: String?
    let element: String?
    let ghost: String?
    let commonRoom: String?
    let heads: [Head]?
    let traits: [Trait]?
}
