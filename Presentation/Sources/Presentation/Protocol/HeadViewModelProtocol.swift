import Foundation
import Domain

protocol HeadViewModelInputProtocol: AnyObject {
    
}

protocol HeadViewModelOutputProtocol: AnyObject {
    var heads: [HeadViewData] { get }
}

protocol HeadViewModelProtocol: HeadViewModelInputProtocol
                                & HeadViewModelOutputProtocol {
}
