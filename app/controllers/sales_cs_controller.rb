class SalesCsController < ApplicationController
    def index
        sales=SalesC.all
        render json: sales
    end
    def create
        sale=SalesC.create(product:params[:product],price:params[:price],date:params[:date],employee:params[:employee],status:params[:status])
        if sale.save
            render json:sale
        else
            render json:sale.errors
        end
    end
    def update
        sale=SalesC.find(params[:id])
        sale.update({
            product:params[:product],
            price:params[:price],
            date:params[:date],
            employee:params[:employee],
            status:params[:status]
        })
        render json: sale
    end
    def destroy
        sale=SalesC.find(params[:id])
        sale.destroy
        render json: sale
    end
    def sumc
        sum=SalesC.sum('price')
        render json: sum
    end
end
