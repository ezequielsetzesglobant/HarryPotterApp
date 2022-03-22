import Foundation
import Domain

class TraitViewModel: TraitViewModelProtocol {
    
    let traits: [TraitViewData]
    
    init(traits: [TraitViewData]) {
        self.traits = traits
    }
}
