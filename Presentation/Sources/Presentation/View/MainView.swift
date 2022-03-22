import UIKit

// MARK: - Constants

private struct Constants {
    static let background: String = "background_image"
    static let labelTitle: String = "Harry Potter"
    static let labelFontSize: CGFloat = 50
    static let numberOfLines: Int = 0
    static let titleTop: CGFloat = 30
    static let titleLeading: CGFloat = 0
    static let titleTrailing: CGFloat = 0
    static let griffindorImage: String = "griffindor_image"
    static let slytherinImage: String = "slytherin_image"
    static let hufflepuffImage: String = "hufflepuff_image"
    static let ravenclawImage: String = "ravenclaw_image"
    static let spellsTitle: String = "Spells"
    static let wizardsTitle: String = "Wizards"
    static let fontName: String = "Palatino-BoldItalic"
    static let buttonFontSize: CGFloat = 30
    static let shadowRadius: CGFloat = 1
    static let shadowOpacity: Float = 1.0
    static let shadowOffset: Int = 3
    static let cornerRadius: CGFloat = 20
    static let zeroConstraint: CGFloat = 0
    static let imageConstantDimen: CGFloat = 190
    static let shiftLeft: CGFloat = -100
    static let shiftRight: CGFloat = 100
    static let upImageTop: CGFloat = 100
    static let downImageTop: CGFloat = 10
    static let buttonTop: CGFloat = 120
    static let buttonConstantHeight: CGFloat = 60
    static let buttonConstantWidth: CGFloat = 140
}

// MARK: - Class

class MainView: UIView {

    // MARK: - Propeties

    let backgroundImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: Constants.background)
        return imageView
    }()
    let titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: Constants.fontName, size: Constants.labelFontSize)
        label.text = Constants.labelTitle
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = Constants.numberOfLines
        label.textColor = .black
        label.textAlignment = .center
        label.layer.shadowColor = Color.lightGray.cgColor
        label.layer.shadowRadius = Constants.shadowRadius
        label.layer.shadowOpacity = Constants.shadowOpacity
        label.layer.shadowOffset = CGSize(width: Constants.shadowOffset, height: Constants.shadowOffset)
        label.layer.masksToBounds = false
        return label
    }()
    let griffindorImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: Constants.griffindorImage)
        imageView.isUserInteractionEnabled = true
        return imageView
    }()
    let slytherinImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: Constants.slytherinImage)
        imageView.isUserInteractionEnabled = true
        return imageView
    }()
    let hufflepuffImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: Constants.hufflepuffImage)
        imageView.isUserInteractionEnabled = true
        return imageView
    }()
    let ravenclawImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: Constants.ravenclawImage)
        imageView.isUserInteractionEnabled = true
        return imageView
    }()
    let spellsButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .brown
        button.setTitle(Constants.spellsTitle, for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont(name: Constants.fontName, size: Constants.buttonFontSize)
        button.layer.shadowColor = Color.lightGray.cgColor
        button.layer.shadowRadius = Constants.shadowRadius
        button.layer.shadowOpacity = Constants.shadowOpacity
        button.layer.shadowOffset = CGSize(width: Constants.shadowOffset, height: Constants.shadowOffset)
        button.layer.masksToBounds = false
        button.layer.cornerRadius = Constants.cornerRadius
        return button
    }()
    let wizardsButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .brown
        button.setTitle(Constants.wizardsTitle, for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont(name: Constants.fontName, size: Constants.buttonFontSize)
        button.layer.shadowColor = Color.lightGray.cgColor
        button.layer.shadowRadius = Constants.shadowRadius
        button.layer.shadowOpacity = Constants.shadowOpacity
        button.layer.shadowOffset = CGSize(width: Constants.shadowOffset, height: Constants.shadowOffset)
        button.layer.masksToBounds = false
        button.layer.cornerRadius = Constants.cornerRadius
        return button
    }()
    weak var delegate: MainViewDelegate?

    // MARK: - Initialization

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        addActions()
    }

    required init?(coder: NSCoder) {
        fatalError(Strings.coderNotImplementedError)
    }

    // MARK: - Setup

    func setupViews() {
        addSubview(backgroundImageView)
        addSubview(titleLabel)
        addSubview(griffindorImageView)
        addSubview(slytherinImageView)
        addSubview(hufflepuffImageView)
        addSubview(ravenclawImageView)
        addSubview(wizardsButton)
        addSubview(spellsButton)
        setConstraints()
    }

    private func setConstraints() {
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        griffindorImageView.translatesAutoresizingMaskIntoConstraints = false
        slytherinImageView.translatesAutoresizingMaskIntoConstraints = false
        hufflepuffImageView.translatesAutoresizingMaskIntoConstraints = false
        ravenclawImageView.translatesAutoresizingMaskIntoConstraints = false
        wizardsButton.translatesAutoresizingMaskIntoConstraints = false
        spellsButton.translatesAutoresizingMaskIntoConstraints = false
        let constraints = [
            backgroundImageView.topAnchor.constraint(equalTo: topAnchor,
                                                     constant: Constants.zeroConstraint),
            backgroundImageView.leadingAnchor.constraint(equalTo: leadingAnchor,
                                                         constant: Constants.zeroConstraint),
            backgroundImageView.trailingAnchor.constraint(equalTo: trailingAnchor,
                                                          constant: Constants.zeroConstraint),
            backgroundImageView.bottomAnchor.constraint(equalTo: bottomAnchor,
                                                        constant: Constants.zeroConstraint),

            titleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor,
                                            constant: Constants.titleTop),
            titleLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor,
                                                constant: Constants.titleLeading),
            titleLabel.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor,
                                                 constant: Constants.titleTrailing),
            
            griffindorImageView.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor,
                                                        multiplier: Constants.zeroConstraint,
                                                        constant: Constants.imageConstantDimen),
            griffindorImageView.widthAnchor.constraint(equalTo: safeAreaLayoutGuide.widthAnchor,
                                                       multiplier: Constants.zeroConstraint,
                                                       constant: Constants.imageConstantDimen),
            griffindorImageView.topAnchor.constraint(equalTo: titleLabel.topAnchor,
                                                     constant: Constants.upImageTop),
            griffindorImageView.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor,
                                                         constant: Constants.shiftLeft),

            slytherinImageView.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor,
                                                       multiplier: Constants.zeroConstraint,
                                                       constant: Constants.imageConstantDimen),
            slytherinImageView.widthAnchor.constraint(equalTo: safeAreaLayoutGuide.widthAnchor,
                                                      multiplier: Constants.zeroConstraint,
                                                      constant: Constants.imageConstantDimen),
            slytherinImageView.topAnchor.constraint(equalTo: titleLabel.topAnchor,
                                                    constant: Constants.upImageTop),
            slytherinImageView.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor,
                                                        constant: Constants.shiftRight),

            hufflepuffImageView.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor,
                                                        multiplier: Constants.zeroConstraint,
                                                        constant: Constants.imageConstantDimen),
            hufflepuffImageView.widthAnchor.constraint(equalTo: safeAreaLayoutGuide.widthAnchor,
                                                       multiplier: Constants.zeroConstraint,
                                                       constant: Constants.imageConstantDimen),
            hufflepuffImageView.topAnchor.constraint(equalTo: griffindorImageView.bottomAnchor,
                                                     constant: Constants.downImageTop),
            hufflepuffImageView.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor,
                                                         constant: Constants.shiftLeft),

            ravenclawImageView.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor,
                                                       multiplier: Constants.zeroConstraint,
                                                       constant: Constants.imageConstantDimen),
            ravenclawImageView.widthAnchor.constraint(equalTo: safeAreaLayoutGuide.widthAnchor,
                                                      multiplier: Constants.zeroConstraint,
                                                      constant: Constants.imageConstantDimen),
            ravenclawImageView.topAnchor.constraint(equalTo: slytherinImageView.bottomAnchor,
                                                    constant: Constants.downImageTop),
            ravenclawImageView.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor,
                                                        constant: Constants.shiftRight),

            spellsButton.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor,
                                                 multiplier: Constants.zeroConstraint,
                                                 constant: Constants.buttonConstantHeight),
            spellsButton.widthAnchor.constraint(equalTo: safeAreaLayoutGuide.widthAnchor,
                                                multiplier: Constants.zeroConstraint,
                                                constant: Constants.buttonConstantWidth),
            spellsButton.topAnchor.constraint(equalTo: hufflepuffImageView.bottomAnchor,
                                              constant: Constants.buttonTop),
            spellsButton.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor,
                                                  constant: Constants.shiftLeft),

            wizardsButton.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor,
                                                  multiplier: Constants.zeroConstraint,
                                                  constant: Constants.buttonConstantHeight),
            wizardsButton.widthAnchor.constraint(equalTo: safeAreaLayoutGuide.widthAnchor,
                                                 multiplier: Constants.zeroConstraint,
                                                 constant: Constants.buttonConstantWidth),
            wizardsButton.topAnchor.constraint(equalTo: ravenclawImageView.bottomAnchor,
                                               constant: Constants.buttonTop),
            wizardsButton.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor,
                                                   constant: Constants.shiftRight)
        ]
        NSLayoutConstraint.activate(constraints)
    }
    
    func addActions() {
        let griffindorTapGestureRecognizer = UITapGestureRecognizer(target: self,
                                                                    action: #selector(griffindorImageTapped))
        griffindorTapGestureRecognizer.numberOfTapsRequired = 1
        griffindorImageView.addGestureRecognizer(griffindorTapGestureRecognizer)
        let slytherinTapGestureRecognizer = UITapGestureRecognizer(target: self,
                                                                   action: #selector(slytherinImageTapped))
        slytherinTapGestureRecognizer.numberOfTapsRequired = 1
        slytherinImageView.addGestureRecognizer(slytherinTapGestureRecognizer)
        let hufflepuffTapGestureRecognizer = UITapGestureRecognizer(target: self,
                                                                    action: #selector(hufflepuffImageTapped))
        hufflepuffTapGestureRecognizer.numberOfTapsRequired = 1
        hufflepuffImageView.addGestureRecognizer(hufflepuffTapGestureRecognizer)
        let ravenclawTapGestureRecognizer = UITapGestureRecognizer(target: self,
                                                                   action: #selector(ravenclawImageTapped))
        ravenclawTapGestureRecognizer.numberOfTapsRequired = 1
        ravenclawImageView.addGestureRecognizer(ravenclawTapGestureRecognizer)
        spellsButton.addTarget(self, action: #selector(self.spellsButtonTapped), for: .touchUpInside)
        wizardsButton.addTarget(self, action: #selector(self.wizardsButtonTapped), for: .touchUpInside)
    }
}

@objc extension MainView {

    func griffindorImageTapped() {
        delegate?.imagePressed(houseID: .griffindor)
    }

    func slytherinImageTapped() {
        delegate?.imagePressed(houseID: .slytherin)
    }

    func hufflepuffImageTapped() {
        delegate?.imagePressed(houseID: .hufflepuff)
    }

    func ravenclawImageTapped() {
        delegate?.imagePressed(houseID: .ravenclaw)
    }

    func spellsButtonTapped() {
        delegate?.spellsButtonPressed()
    }

    func wizardsButtonTapped() {
        delegate?.wizardsButtonPressed()
    }
}
