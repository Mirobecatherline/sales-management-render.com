class EmployeesController < ApplicationController
    def index
        employee=Employee.all
        render json: employee
    end
     def destroy
        sale=Employee.find(params[:id])
        sale.destroy
        render json: sale
    end
end
