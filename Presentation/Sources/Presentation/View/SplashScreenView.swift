import UIKit

// MARK: - Constants

private struct Constants {
    static let splashScreenImage: String = "splash_screen_animation"
    static let animationImageViewLowAlpha: CGFloat = 0
    static let animationImageViewHighAlpha: CGFloat = 1
    static let animationImageViewAnimationDuration: TimeInterval = 5
    static let animationImageViewMultiplier: CGFloat = 0
    static let animationImageViewConstant: CGFloat = 350
}

// MARK: - Class

class SplashScreenView: UIView {

    // MARK: - Propeties

    let animationImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: Constants.splashScreenImage)
        imageView.alpha = Constants.animationImageViewLowAlpha
        return imageView
    }()
    weak var delegate: SplashScreenViewDelegate?

    // MARK: - Initialization

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }

    required init?(coder: NSCoder) {
        fatalError(Strings.coderNotImplementedError)
    }

    // MARK: - Setup

    func setupViews() {
        addSubview(animationImageView)
        UIView.animate(withDuration: Constants.animationImageViewAnimationDuration, animations: {
            self.animationImageView.alpha = Constants.animationImageViewHighAlpha
        }, completion: { done in
            if done {
                self.delegate?.goToMainScreen()
            }
        })
        setConstraints()
    }

    private func setConstraints() {
        animationImageView.translatesAutoresizingMaskIntoConstraints = false
        let constraints = [
            animationImageView.heightAnchor.constraint(equalTo: safeAreaLayoutGuide.heightAnchor,
                                                       multiplier: Constants.animationImageViewMultiplier,
                                                       constant: Constants.animationImageViewConstant),
            animationImageView.widthAnchor.constraint(equalTo: safeAreaLayoutGuide.widthAnchor,
                                                      multiplier: Constants.animationImageViewMultiplier,
                                                      constant: Constants.animationImageViewConstant),
            animationImageView.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor),
            animationImageView.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor)
        ]
        NSLayoutConstraint.activate(constraints)
    }
}
