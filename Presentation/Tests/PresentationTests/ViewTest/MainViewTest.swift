import XCTest
@testable import Presentation

// MARK: - Class

class MainViewTest: XCTestCase {

    // MARK: - Properties

    var mainView: MainView!

    // MARK: - Setup

    override func setUpWithError() throws {
        mainView = MainView(frame: UIScreen.main.bounds)
    }

    func testExistingComponents() throws {
        XCTAssertNotNil(mainView.backgroundImageView)
        XCTAssertNotNil(mainView.titleLabel)
        XCTAssertNotNil(mainView.griffindorImageView)
        XCTAssertNotNil(mainView.slytherinImageView)
        XCTAssertNotNil(mainView.hufflepuffImageView)
        XCTAssertNotNil(mainView.ravenclawImageView)
        XCTAssertNotNil(mainView.spellsButton)
        XCTAssertNotNil(mainView.wizardsButton)
    }

    func testLabelAndButtonStrings() throws {
        XCTAssertEqual(mainView.titleLabel.text, "Harry Potter")
        XCTAssertEqual(mainView.spellsButton.titleLabel?.text, "Spells")
        XCTAssertEqual(mainView.wizardsButton.titleLabel?.text, "Wizards")
    }
}
