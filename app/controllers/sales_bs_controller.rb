class SalesBsController < ApplicationController
    def index
        sales=SalesB.all
        render json: sales
    end
    def create
        sale=SalesB.create(product:params[:product],price:params[:price],date:params[:date],employee:params[:employee],status:params[:status])
        if sale.save
            render json:sale
        else
            render json:sale.errors
        end
    end
    def update
        sale=SalesB.find(params[:id])
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
        sale=SalesB.find(params[:id])
        sale.destroy
        render json: sale
    end
    def sumb
        sum=SalesB.sum('price')
        render json: sum
    end
end
