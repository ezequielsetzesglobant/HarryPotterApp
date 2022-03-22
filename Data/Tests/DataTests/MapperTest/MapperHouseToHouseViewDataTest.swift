import XCTest
@testable import Data

// MARK: - Class

class MapperHouseToHouseViewDataTest: XCTestCase {
    
    let house: House = House(id: "id",
                             name: "name",
                             houseColours: "house_colours",
                             founder: "founder",
                             animal: "animal",
                             element: "element",
                             ghost: "ghost",
                             commonRoom: "common_room",
                             heads: [Head(id: "id",
                                          firstName: "first_name",
                                          lastName: "last_name")],
                             traits: [Trait(id: "id",
                                            name: "name")])
    
    func testToDomain() {
        let houseViewData = house.toDomain()
        
        XCTAssertEqual(houseViewData.id, house.id)
        XCTAssertEqual(houseViewData.name, house.name)
        XCTAssertEqual(houseViewData.houseColours, house.houseColours)
        XCTAssertEqual(houseViewData.animal, house.animal)
        XCTAssertEqual(houseViewData.element, house.element)
        XCTAssertEqual(houseViewData.ghost, house.ghost)
        XCTAssertEqual(houseViewData.commonRoom, house.commonRoom)
        XCTAssertEqual(houseViewData.heads[0].id, house.heads?[0].id)
        XCTAssertEqual(houseViewData.heads[0].firstName, house.heads?[0].firstName)
        XCTAssertEqual(houseViewData.heads[0].lastName, house.heads?[0].lastName)
        XCTAssertEqual(houseViewData.traits[0].id, house.traits?[0].id)
        XCTAssertEqual(houseViewData.traits[0].name, house.traits?[0].name)
    }
}
