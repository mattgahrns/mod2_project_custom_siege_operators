class OperatorWeaponsController < ApplicationController

    def weapon_selection
        @primary_weapons = Weapon.where(primary: true).order(:name)
        @secondary_weapons = Weapon.where(primary: false).order(:name)
        @sights = Sight.all
        @barrels = Barrel.all
        @grips = Grip.all
    end
    
    def create

    end
end
