import Foundation
import Domain

class HeadViewModel: HeadViewModelProtocol {
    
    var heads: [HeadViewData]
    
    init(heads: [HeadViewData]) {
        self.heads = heads
    }
}
