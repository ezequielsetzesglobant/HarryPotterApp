import UIKit

// MARK: - Class

class MainViewController: UIViewController {

    // MARK: - Properties
    
    var coordinator: CoordinatorProtocol?
    lazy var selfView: MainView = {
        let view = MainView(frame: UIScreen.main.bounds)
        view.delegate = self
        return view
    }()
    
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
        setUpUI()
    }
    
    func setUpUI() {
        view = selfView
    }
}

// MARK: - Extensions

extension MainViewController: MainViewDelegate {
    
    func imagePressed(id: String) {
        coordinator?.goToTabBarController(id: id)
    }

    func spellsButtonPressed() {
        print("spells")
    }

    func wizardsButtonPressed() {
        print("wizards")
    }
}
