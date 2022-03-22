import Foundation
import Domain

class HeadViewModel: HeadViewModelProtocol {
    
    let heads: [HeadViewData]
    
    init(heads: [HeadViewData]) {
        self.heads = heads
    }
}
