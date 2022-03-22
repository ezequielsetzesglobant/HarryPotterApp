import Foundation
import Domain

extension House {

    func toDomain() -> HouseViewData {
        return HouseViewData(id: self.id,
                             name: self.name ?? ConstantsUtils.stringDefault,
                             houseColours: self.houseColours ?? ConstantsUtils.stringDefault,
                             founder: self.founder ?? ConstantsUtils.stringDefault,
                             animal: self.animal ?? ConstantsUtils.stringDefault,
                             element: self.element ?? ConstantsUtils.stringDefault,
                             ghost: self.ghost ?? ConstantsUtils.stringDefault,
                             commonRoom: self.commonRoom ?? ConstantsUtils.stringDefault,
                             heads: self.heads?.map({ (head) -> HeadViewData in
                                head.transformHeadToHeadViewData()
                             }) ?? ConstantsUtils.headViewDataArrayDefault,
                             traits: self.traits?.map({ (trait) -> TraitViewData in
                                trait.transformTraitToTraitViewData()
                             }) ?? ConstantsUtils.traitViewDataArrayDefault)
    }
}

private extension Head {

    func transformHeadToHeadViewData() -> HeadViewData {
        return HeadViewData(id: self.id,
                            firstName: self.firstName ?? ConstantsUtils.stringDefault,
                            lastName: self.lastName ?? ConstantsUtils.stringDefault)
    }
}

private extension Trait {

    func transformTraitToTraitViewData() -> TraitViewData {
        return TraitViewData(id: self.id,
                             name: self.name)
    }
}
