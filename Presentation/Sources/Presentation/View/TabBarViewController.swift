import UIKit

// MARK: - Constants

private struct Constants {
    static let tabBarFirstItemTitle: String = "Detail information"
    static let tabBarSecondItemTitle: String = "Heads"
    static let tabBarThirdItemTitle: String = "Traits"
    static let tabBarFirstItemImage: String = "detail_information_image"
    static let tabBarSecondItemImage: String = "head_image"
    static let tabBarThirdItemImage: String = "trait_image"
    static let tabBarFirstItemIndex: Int = 0
    static let tabBarLastItemIndex: Int = 2
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

    // MARK: - Initialization
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
        guard let items = tabBar.items else { return }
        for index in Constants.tabBarFirstItemIndex...Constants.tabBarLastItemIndex {
            viewControllers?[index].title = Constants.titleList[index]
            items[index].image =
                UIImage.init(named: Constants.imageList[index])?.withRenderingMode(UIImage.RenderingMode.automatic)
            items[index].selectedImage =
                UIImage.init(named: Constants.imageList[index])?.withRenderingMode(UIImage.RenderingMode.automatic)
        }
    }
}
