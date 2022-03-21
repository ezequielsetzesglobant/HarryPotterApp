import Foundation

protocol MainViewInputDelegate: AnyObject {
    func imagePressed(id: String)
    func spellsButtonPressed()
    func wizardsButtonPressed()
}

protocol MainViewDelegate: MainViewInputDelegate {
}
