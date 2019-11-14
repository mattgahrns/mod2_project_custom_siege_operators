class OperatorsController < ApplicationController

    before_action :authorize, only: [:new, :selection, :create, :update]

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
        @user = User.find(session[:user_id])
        params[:operator][:user_id] = @user.id
        @operator = Operator.create(operator_params(:name, :attacker, :user_id))
        redirect_to "/operators/#{@operator.id}/selection"
    end

    def update
        @operator = Operator.find(params[:id])
        @operator.update(operator_params(:gadget_id, :utility_id, :speedarmor))
        redirect_to "/operators/#{@operator.id}/weapon_selection"
    end

    def show
        @operator = Operator.find(params[:id])
        if @operator.attacker == true
            @type = "Attacker"
        else
            @type = "Defender"
        end
        @weapons = @operator.getWeapons
    end


    private

    def operator_params(*args)
        params.require(:operator).permit(*args)
    end
end
