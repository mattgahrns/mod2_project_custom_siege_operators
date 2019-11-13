class OperatorWeapon < ApplicationRecord
    belongs_to :operator
    belongs_to :weapon
    belongs_to :barrel
    belongs_to :grip
    belongs_to :sight
end
