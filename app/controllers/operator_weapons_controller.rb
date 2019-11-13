class OperatorWeaponsController < ApplicationController

    def weapon_selection
        @operator = Operator.find(params[:id])
        @primary_weapons = Weapon.where(primary: true).order(:name)
        @secondary_weapons = Weapon.where(primary: false).order(:name)
        @sights = Sight.all
        @barrels = Barrel.all
        @grips = Grip.all
        if @operator.attacker == true
            @type = "Attacker"
        else
            @type = "Defender"
        end
    end
    
    def create
        @operator = Operator.find(params[:id])
        params[:operator_weapon][:operator_id] = @operator.id
        @operator_weapon = OperatorWeapon.create(operator_weapons_params(:operator_id, :weapon_id, :laser, :sight_id, :barrel_id, :grip_id))
        redirect_to "/operators/#{@operator.id}/secondary_selection"
    end

    def secondary_selection
        @operator = Operator.find(params[:id])
        @primary_weapons = Weapon.where(primary: true).order(:name)
        @secondary_weapons = Weapon.where(primary: false).order(:name)
        @sights = Sight.all
        @barrels = Barrel.all
        @grips = Grip.all
        if @operator.attacker == true
            @type = "Attacker"
        else
            @type = "Defender"
        end
    end

    def create_secondary
        @operator = Operator.find(params[:id])
        params[:operator_weapon][:operator_id] = @operator.id
        @operator_weapon = OperatorWeapon.create(operator_weapons_params(:operator_id, :weapon_id, :laser, :sight_id, :barrel_id, :grip_id))
        redirect_to "/operators/#{@operator.id}"
    end

    private

    def operator_weapons_params(*args)
        params.require(:operator_weapon).permit(*args)
    end




end
