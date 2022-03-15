import XCTest
@testable import Presentation

// MARK: - Class

class MockMainViewDelegate: MainViewDelegate {
    
    var tappedExpectation: XCTestExpectation?

    func griffindorImagePressed() {
        tappedExpectation?.fulfill()
    }

    func slytherinImagePressed() {
        tappedExpectation?.fulfill()
    }

    func hufflepuffImagePressed() {
        tappedExpectation?.fulfill()
    }

    func ravenclawImagePressed() {
        tappedExpectation?.fulfill()
    }

    func spellsButtonPressed() {
        tappedExpectation?.fulfill()
    }

    func wizardsButtonPressed() {
        tappedExpectation?.fulfill()
    }
}

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
    
    func testGriffindorImageTapped() throws {
        let delegate = MockMainViewDelegate()
        delegate.tappedExpectation = expectation(description: "Griffindor Pressed.")
        mainView.delegate = delegate
        
        mainView.griffindorImageTapped()
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testSlytherinImageTapped() throws {
        let delegate = MockMainViewDelegate()
        delegate.tappedExpectation = expectation(description: "Slytherin Pressed.")
        mainView.delegate = delegate
        
        mainView.slytherinImageTapped()
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testHufflepuffImageTapped() throws {
        let delegate = MockMainViewDelegate()
        delegate.tappedExpectation = expectation(description: "Hufflepuff Pressed.")
        mainView.delegate = delegate
        
        mainView.hufflepuffImageTapped()
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testRavenclawImageTapped() throws {
        let delegate = MockMainViewDelegate()
        delegate.tappedExpectation = expectation(description: "Ravenclaw Pressed.")
        mainView.delegate = delegate
        
        mainView.ravenclawImageTapped()
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testSpellsImageTapped() throws {
        let delegate = MockMainViewDelegate()
        delegate.tappedExpectation = expectation(description: "Spells Pressed.")
        mainView.delegate = delegate
        
        mainView.spellsButtonTapped()
        
        waitForExpectations(timeout: 5, handler: nil)
    }
    
    func testWizardsImageTapped() throws {
        let delegate = MockMainViewDelegate()
        delegate.tappedExpectation = expectation(description: "Wizards Pressed.")
        mainView.delegate = delegate
        
        mainView.wizardsButtonTapped()
        
        waitForExpectations(timeout: 5, handler: nil)
    }
}
