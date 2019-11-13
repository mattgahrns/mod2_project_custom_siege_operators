class Operator < ApplicationRecord
    has_many :operator_weapons
    has_many :weapons, through: :operator_weapons
    has_one :gadget
    has_one :utility
    has_one :speedarmor
    belongs_to :user
end
