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
        @operator = Operator.new(operator_params(:name, :attacker, :user_id))
        if @operator.valid?
            @operator.save
            redirect_to "/operators/#{@operator.id}/selection"
        else
            flash.now[:error] = "You must select Attacker or Defender!"
            render :new
        end
    end

    def update
        @operator = Operator.find(params[:id])
        if params[:operator][:speedarmor]
            @operator.update(operator_params(:gadget_id, :utility_id, :speedarmor))
            redirect_to "/operators/#{@operator.id}/weapon_selection"
        else
            flash[:error] = "You must select a Speed and Armor combination!"
            redirect_to "/operators/#{@operator.id}/selection"
        end
    end

    def show
        @operator = Operator.find(params[:id])
        @user = @operator.user
        if @operator.attacker == true
            @type = "Attacker"
        else
            @type = "Defender"
        end
        @weapons = @operator.getWeapons
    end

    def delete
        @operator = Operator.find(params[:id])
        redirect_to "/operators/#{@operator.id}/confirm_operator_deletion"
    end

    def confirm
        @operator = Operator.find(params[:id])
    end

    def destroy 
        @operator = Operator.find(params[:id])
        @operator.destroy
        redirect_to "/users/#{session[:user_id]}/operators", notice: "Operator deleted!"
    end


    private

    def operator_params(*args)
        params.require(:operator).permit(*args)
    end
end
