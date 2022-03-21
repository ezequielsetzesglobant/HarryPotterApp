import Foundation
import Domain

protocol TraitViewModelInputProtocol: AnyObject {
    
}

protocol TraitViewModelOutputProtocol: AnyObject {
    var traits: [TraitViewData] { get set }
}

protocol TraitViewModelProtocol: TraitViewModelInputProtocol
                                & TraitViewModelOutputProtocol {
}
