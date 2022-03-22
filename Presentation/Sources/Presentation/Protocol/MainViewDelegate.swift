import Foundation

protocol MainViewInputDelegate: AnyObject {
    func imagePressed(houseID: HousesID)
    func spellsButtonPressed()
    func wizardsButtonPressed()
}

protocol MainViewDelegate: MainViewInputDelegate {
}
