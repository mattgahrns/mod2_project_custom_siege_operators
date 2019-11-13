class OperatorWeapon < ApplicationRecord
    belongs_to :operator
    belongs_to :weapon
    has_one :barrel
    has_one :grip
    has_one :laser
    has_one :sight
end
