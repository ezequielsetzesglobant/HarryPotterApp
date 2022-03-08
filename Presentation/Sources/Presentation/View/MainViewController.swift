import UIKit

// MARK: - Class

class MainViewController: UIViewController {

    // MARK: - Properties
    
    var coordinator: CoordinatorProtocol?
    
    // MARK: - Setup
    
    init(coordinator: CoordinatorProtocol) {
        self.coordinator = coordinator
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError(Strings.coderNotImplementedError)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.setNavigationBarHidden(false, animated: true)
        view.backgroundColor = .red
    }
}
