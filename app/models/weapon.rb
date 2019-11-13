class Weapon < ApplicationRecord
    has_many :operator_weapons
    has_many :operators, through: :operator_weapons
end
