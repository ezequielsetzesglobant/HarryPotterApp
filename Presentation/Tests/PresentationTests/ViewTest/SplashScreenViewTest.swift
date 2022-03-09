import XCTest
@testable import Presentation

// MARK: - Class

class SplashScreenViewTest: XCTestCase {
    
    // MARK: - Properties
    
    var splashScreenView: SplashScreenView!
    
    // MARK: - Setup
    
    override func setUpWithError() throws {
        splashScreenView = SplashScreenView(frame: UIScreen.main.bounds)
    }
    
    func testExistingImage() throws {
        XCTAssertNotNil(splashScreenView.animationImageView)
    }
}
