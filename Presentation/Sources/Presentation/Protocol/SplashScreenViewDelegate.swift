import Foundation

protocol SplashScreenViewInputDelegate: AnyObject {
    func goToMainScreen()
}

protocol SplashScreenViewDelegate: SplashScreenViewInputDelegate {
}
