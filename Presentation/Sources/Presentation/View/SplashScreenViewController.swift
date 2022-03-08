import UIKit

// MARK: - Class

class SplashScreenViewController: UIViewController {
    
    // MARK: - Properties
    
    var coordinator: CoordinatorProtocol?
    lazy var selfView: SplashScreenView = {
        let view = SplashScreenView(frame: UIScreen.main.bounds)
        view.delegate = self
        view.backgroundColor = Color.backgroundColor
        return view
    }()
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
    
    func setUpUI() {
        view = selfView
    }
}

// MARK: - Extensions

extension SplashScreenViewController: SplashScreenViewDelegate {
    
    func goToMainScreen() {
        coordinator?.goToMainViewController()
    }
}
