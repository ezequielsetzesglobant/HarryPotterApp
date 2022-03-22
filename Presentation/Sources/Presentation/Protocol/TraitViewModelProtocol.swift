import Foundation
import Domain

protocol TraitViewModelInputProtocol: AnyObject {
    
}

protocol TraitViewModelOutputProtocol: AnyObject {
    var traits: [TraitViewData] { get }
}

protocol TraitViewModelProtocol: TraitViewModelInputProtocol
                                & TraitViewModelOutputProtocol {
}
