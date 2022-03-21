import Foundation

protocol MainViewInputDelegate: AnyObject {
    func imagePressed(house: Houses)
    func spellsButtonPressed()
    func wizardsButtonPressed()
}

protocol MainViewDelegate: MainViewInputDelegate {
}
