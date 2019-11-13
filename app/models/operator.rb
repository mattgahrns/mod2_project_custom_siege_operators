class Operator < ApplicationRecord
    has_many :operator_weapons
    has_many :weapons, through: :operator_weapons
    belongs_to :gadget, optional: true
    belongs_to :utility, optional: true
    belongs_to :user, optional: true

    def getWeapons
        temp = OperatorWeapon.where("operator_id = ?", self.id)
    end

end
