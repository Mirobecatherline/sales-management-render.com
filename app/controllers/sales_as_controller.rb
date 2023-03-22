class SalesAsController < ApplicationController
    def index
        sales=SalesA.all
        render json: sales
    end
    def create
        sale=SalesA.create(product:params[:product],price:params[:price],date:params[:date],employee:params[:employee],status:params[:status])
        if sale.save
            render json:sale
        else
            render json:sale.errors
        end
    end
    def update
        sale=SalesA.find(params[:id])
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
        sale=SalesA.find(params[:id])
        sale.destroy
        render json: sale
    end
    def suma
        sum=SalesA.sum('price')
        render json: sum
    end
end
