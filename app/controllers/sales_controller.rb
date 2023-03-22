class SalesController < ApplicationController
    def index
        sales=Sale.all
        render json: sales
    end
    def create
        sale=Sale.create(product:params[:product],price:params[:price],date:params[:date])
        if sale.save
            render json:sale
        else
            render json:sale.errors
        end
    end
    def update
        sale=Sale.find(params[:id])
        sale.update({
            product:params[:product],
            price:params[:price],
            date:params[:date]
        })
        render json: sale
    end
    def destroy
        sale=Sale.find(params[:id])
        sale.destroy
        render json: sale
    end
    def sum
        sum=Sale.sum('price')
        render json: sum
    end

end
