class SalesPipelinesController < ApplicationController
        def index
        if params[:start_date] && params[:end_date]
            start_date = Date.parse(params[:start_date])
            end_date = Date.parse(params[:end_date])

            sales_data = SalesPipeline.where(date: start_date..end_date)
            total_sales = sales_data.sum { |sale| sale.price * sale.quantity }

            render json: { total_sales: total_sales }
        else
            sales = SalesPipeline.all
            render json: sales
        end
    end
    def create
        
        products=Product.where(shop: "pipeline", name: params[:product])
        product= products.first

         if product.nil?
            # Product not found
            render status: :not_found
            elsif product.quantity < params[:quantity].to_i
            # Not enough quantity available
            render status: :unprocessable_entity
            elsif product.quantity > params[:quantity].to_i
            # Subtract quantity from the product
            product.update(quantity: product.quantity - params[:quantity].to_i)
            sale=SalesPipeline.create(product:params[:product],price:params[:price],date:params[:date],employee:params[:employee],quantity:params[:quantity], status:params[:status])
                if sale.save
                    render json:sale, status: :ok
                else
                    render json:sale.errors
                end
            else
            # Remove the product from the database
            product.destroy
            sale=SalesPipeline.create(product:params[:product],price:params[:price],date:params[:date],employee:params[:employee],quantity:params[:quantity], status:params[:status])
                if sale.save
                    render json:sale, status: :ok
                else
                    render json:sale.errors
                end
        end
        
    end
    def update
        sale=SalesPipeline.find(params[:id])

        original_quantity= sale.quantity
        sale.update({
            product:params[:product],
            price:params[:price],
            date:params[:date],
            employee:params[:employee],
            quantity:params[:quantity],
            status:params[:status]
        })

        quantity_diff= original_quantity - params[:quantity].to_i

        product= Product.find_by(name: params[:product], shop: "pipeline")
        if product.nil?
            deletedproduct=Product.create(name:params[:product],shop:"pipeline",quantity: original_quantity,price: sale.price , category_id: 4 )

            if deletedproduct.quantity < params[:quantity].to_i
                render status: :unprocessable_entity
            elsif deletedproduct.quantity > params[:quantity].to_i
                deletedproduct.update(quantity: deletedproduct.quantity - params[:quantity].to_i)
                render json:sale, status: :ok
            else
                product.destroy
                render json:sale, status: :ok
            end

            
        else
            newquantity= product.quantity + quantity_diff
            if newquantity == 0
                #product quantity is zero
                product.destroy
            else
                product.update(quantity: newquantity)
                
            end
            render json: sale , status: :ok
        end
        
    end
    def destroy
        sale=SalesPipeline.find(params[:id])
        sale.destroy
        render json: sale
    end
    def sumpipeline
        sum=SalesPipeline.sum('price')
        render json: sum
    end
end
