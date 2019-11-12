class OperatorsController < ApplicationController

    def index
        @operators = Operator.all
    end

    def new
        @operator = Operator.new
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
