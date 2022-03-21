import UIKit

// MARK: - Class

class TraitViewController: UIViewController {

    // MARK: - Properties

    var coordinator: TabBarCoordinatorProtocol?
    lazy var selfView: TraitView = {
        let view = TraitView(frame: UIScreen.main.bounds)
        view.backgroundColor = .yellow
        return view
    }()
    var viewModel: TraitViewModelProtocol?  {
        didSet {
            //Cargar vista
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
