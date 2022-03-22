import UIKit
import Domain

// MARK: - Constants

private struct Constants {
    static let tabBarFirstItemTitle: String = "Detail information"
    static let tabBarSecondItemTitle: String = "Heads"
    static let tabBarThirdItemTitle: String = "Traits"
    static let tabBarFirstItemImage: String = "detail_information_image"
    static let tabBarSecondItemImage: String = "head_image"
    static let tabBarThirdItemImage: String = "trait_image"
    static let tabBarFirstItemIndex: Int = 0
    static let tabBarSecondItemIndex: Int = 1
    static let tabBarThirdItemIndex: Int = 2
    static let imageList: [String] = [
        Constants.tabBarFirstItemImage,
        Constants.tabBarSecondItemImage,
        Constants.tabBarThirdItemImage
    ]
    static let titleList: [String] = [
        Constants.tabBarFirstItemTitle,
        Constants.tabBarSecondItemTitle,
        Constants.tabBarThirdItemTitle
    ]
}

// MARK: - Class

class TabBarViewController: UITabBarController {

    // MARK: - Properties
    
    var viewModel: TabBarViewModelProtocol? {
        didSet {
            setUpViewModel()
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
        guard let items = tabBar.items else { return }
        for index in Constants.tabBarFirstItemIndex...Constants.tabBarThirdItemIndex {
            viewControllers?[index].title = Constants.titleList[index]
            items[index].image =
                UIImage.init(named: Constants.imageList[index])?.withRenderingMode(UIImage.RenderingMode.automatic)
            items[index].selectedImage =
                UIImage.init(named: Constants.imageList[index])?.withRenderingMode(UIImage.RenderingMode.automatic)
        }
    }
    
    func setUpViewModel() {
        viewModel?.onFetchHouse = { [weak self] in
            self?.displayHouseInformationBetweenTabs()
        }
        viewModel?.onError = { [weak self] messageError in
            self?.displayError(messageError: messageError)
        }
    }
    
    func displayHouseInformationBetweenTabs() {
        let detailInformationViewController =
            viewControllers?[Constants.tabBarFirstItemIndex] as? DetailInformationViewController
        detailInformationViewController?.viewModel = viewModel?.detailInformationViewModel
        let headViewController = viewControllers?[Constants.tabBarSecondItemIndex] as? HeadViewController
        headViewController?.viewModel = viewModel?.headViewModel
        let traitViewController = viewControllers?[Constants.tabBarThirdItemIndex] as? TraitViewController
        traitViewController?.viewModel = viewModel?.traitViewModel
        AlertHelper.shared.showAlertMessage(title: viewModel?.houseViewData?.name ?? "", viewController: self)
    }
    
    func displayError(messageError: String) {
        AlertHelper.shared.showAlertMessage(title: messageError, viewController: self)
    }
}
