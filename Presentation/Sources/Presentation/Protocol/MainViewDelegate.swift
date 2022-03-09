import Foundation

protocol MainViewInputDelegate: AnyObject {
    func griffindorImagePressed()
    func slytherinImagePressed()
    func hufflepuffImagePressed()
    func ravenclawImagePressed()
    func spellsButtonPressed()
    func wizardsButtonPressed()
}

protocol MainViewDelegate: MainViewInputDelegate {
}
