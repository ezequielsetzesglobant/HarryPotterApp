import UIKit

// MARK: - Class

class DetailInformationViewController: UIViewController {

    // MARK: - Properties
    
    var coordinator: TabBarCoordinatorProtocol?
    lazy var selfView: DetailInformationView = {
        let view = DetailInformationView(frame: UIScreen.main.bounds)
        view.backgroundColor = .red
        return view
    }()
    
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
