# require 'pry'
class OperatorsController < ApplicationController

    def index
        @operators = Operator.all
    end

    def new
        @operator = Operator.new
    end

    def selection
        @operator = Operator.find(params[:id])
        
        if @operator.attacker == true
            @gadgets = Gadget.where(attacker: true).order(:name)
            @utility = Utility.where(attacker: true).order(:name)
            @type = "Attacker"
        else
            @gadgets = Gadget.where(attacker: false).order(:name)
            @utility = Utility.where(attacker: false).order(:name)
            @type = "Defender"
        end
        
    end

    def create
        @operator = Operator.create(operator_params(:name, :attacker, :user_id))
        redirect_to "/operators/#{@operator.id}/selection"
        
    end

    def update
        @operator = Operator.find(params[:id])
        @operator.update(operator_params(:gadget_id, :utility_id, :type))
        redirect_to "/operators/#{@operator.id}/weapon_selection"
    end

    def show
        @operator = Operator.find(params[:id])
    end


    private

    def operator_params(*args)
        params.require(:operator).permit(*args)
    end
end
