import UIKit

// MARK: - Class

class HeadViewController: UIViewController {

    // MARK: - Properties
    
    var coordinator: TabBarCoordinatorProtocol?
    lazy var selfView: HeadView = {
        let view = HeadView(frame: UIScreen.main.bounds)
        view.backgroundColor = .blue
        return view
    }()
    var viewModel: HeadViewModelInputProtocol? {
        didSet {
            //Load view
        }
    }
    
    // MARK: - Initialization
    
    init(coordinator: TabBarCoordinatorProtocol) {
        self.coordinator = coordinator
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError(Strings.coderNotImplementedError)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
    }
    
    // MARK: - Setup
    
    func setUpUI() {
        view = selfView
    }
}
