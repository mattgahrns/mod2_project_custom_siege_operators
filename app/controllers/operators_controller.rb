class OperatorsController < ApplicationController

    def index
        @operators = Operator.all
    end

    def new
        @operator = Operator.new
        @attk_gadgets = Gadget.where(attacker: true).order(:name)
        @def_gadgets = Gadget.where(attacker: false).order(:name)
        @primary_weapons = Weapon.where(primary: true).order(:name)
        @secondary_weapons = Weapon.where(primary: false).order(:name)
        @attk_utility = Utility.where(attacker: true).order(:name)
        @def_utility = Utility.where(attacker: false).order(:name)
        @sights = Sight.all
        @barrels = Barrel.all
        @grips = Grip.all
    end

    def create
        @operator = Operator.create(operator_params)
        redirect_to operator_path(@operator)
    end

    def show
        @operator = Operator.find(params[:id])
    end


    private

    def operator_params
        params.require(:operator).permit(:name, :attacker, :gadget_id, :utility_id, :user_id)
    end
end
