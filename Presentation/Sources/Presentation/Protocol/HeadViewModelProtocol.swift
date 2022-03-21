import Foundation
import Domain

protocol HeadViewModelInputProtocol: AnyObject {
    
}

protocol HeadViewModelOutputProtocol: AnyObject {
    var heads: [HeadViewData] { get set }
}

protocol HeadViewModelProtocol: HeadViewModelInputProtocol
                                & HeadViewModelOutputProtocol {
}
