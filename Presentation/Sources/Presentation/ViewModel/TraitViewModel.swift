import Foundation
import Domain

class TraitViewModel: TraitViewModelProtocol {
    
    var traits: [TraitViewData]
    
    init(traits: [TraitViewData]) {
        self.traits = traits
    }
}
