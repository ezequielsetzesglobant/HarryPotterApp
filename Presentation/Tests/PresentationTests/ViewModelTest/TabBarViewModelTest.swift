import XCTest
@testable import Presentation
import Domain

// MARK: - Class

class MockTabBarView {
    
    // MARK: - Properties

    var viewModel: TabBarViewModelProtocol!
    
    init(viewModel: TabBarViewModelProtocol) {
        self.viewModel = viewModel
    }
    
    var displayHouseInformationBetweenTabsValue: Bool = false
    var displayErrorValue: String = ""
    
    func displayHouseInformationBetweenTabs() {
        displayHouseInformationBetweenTabsValue = true
    }
    
    func displayError(messageError: String) {
        displayErrorValue = messageError
    }
}

// MARK: - Class

class TabBarViewModelTest: XCTestCase {

    // MARK: - Properties

    private var view: MockTabBarView!

    var viewModel: TabBarViewModelProtocol!

    func testgetHouseSuccess() throws {
        viewModel = TabBarViewModel(useCase: GetHouseUseCase(provider: MockProviderSucces()), houseId: "")
        view = MockTabBarView(viewModel: viewModel)
        let expectationDescription = expectation(description: "Get House Success")
        viewModel.onFetchHouse = { [weak self] in
            self?.view.displayHouseInformationBetweenTabs()
            expectationDescription.fulfill()
        }

        viewModel.getHouse()
        expectationDescription.assertForOverFulfill = false
        waitForExpectations(timeout: 5, handler: nil)
        XCTAssertTrue(view.displayHouseInformationBetweenTabsValue)
    }
    
    func testgetHouseFailure() throws {
        viewModel = TabBarViewModel(useCase: GetHouseUseCase(provider: MockProviderFailure()), houseId: "")
        view = MockTabBarView(viewModel: viewModel)
        let expectationDescription = expectation(description: "Get House Failure")
        viewModel.onError = { [weak self] errorMessage in
            self?.view.displayError(messageError: "error")
            expectationDescription.fulfill()
        }

        viewModel.getHouse()
        expectationDescription.assertForOverFulfill = false
        waitForExpectations(timeout: 5, handler: nil)
        XCTAssertEqual(view.displayErrorValue, "error")
    }
}
