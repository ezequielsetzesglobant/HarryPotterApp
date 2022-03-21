import Foundation
import UIKit

class AlertHelper {

    static let shared: AlertHelper = AlertHelper()

    private init() {}

    func showAlertMessage(
        title: String = Strings.emptyString,
        message: String = Strings.emptyString,
        viewController: UIViewController,
        handler: @escaping ((UIAlertAction) -> Void) = { _ in }
    ) {
        let alertMessage = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertMessage.addAction(UIAlertAction(title: Strings.okMessage, style: .default, handler: handler))
        alertMessage.view.tintColor = .black
        viewController.present(alertMessage, animated: true, completion: nil)
    }
}
