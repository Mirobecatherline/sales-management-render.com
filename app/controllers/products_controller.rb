class ProductsController < ApplicationController
    def index
    category = Category.find_by(name: params[:category])
    if category.present?
      products = category.products
      render json: { products: products }, status: :ok
    else
      render json: { error: "Category not found" }, status: :not_found
    end
  end

   def productsgateA
    category = Category.find_by(name: params[:category])
    if category.present?
      products = category.products.where(shop: 'gateA')
      render json: { products: products }, status: :ok
    else
      render json: { error: "Category not found" }, status: :not_found
    end
  end
   def productsgateB
    category = Category.find_by(name: params[:category])
    if category.present?
      products = category.products.where(shop: 'gateB')
      render json: { products: products }, status: :ok
    else
      render json: { error: "Category not found" }, status: :not_found
    end
  end
   def productsgateC
    category = Category.find_by(name: params[:category])
    if category.present?
      products = category.products.where(shop: 'gateC')
      render json: { products: products }, status: :ok
    else
      render json: { error: "Category not found" }, status: :not_found
    end
  end

  def productspipeline
    category = Category.find_by(name: params[:category])
    if category.present?
      products = category.products.where(shop: 'pipeline')
      render json: { products: products }, status: :ok
    else
      render json: { error: "Category not found" }, status: :not_found
    end
  end

    def allproductsgateA
    product=Product.where(shop: 'gateA')
    if product.present?
      render json: { products: product }, status: :ok
    else
      render json: { error: "Products not found" }, status: :not_found
    end
  end
    def allproductsgateB
    product=Product.where(shop: 'gateB')
    if product.present?
      render json: { products: product }, status: :ok
    else
      render json: { error: "Products not found" }, status: :not_found
    end
  end
     def allproductsgateC
    product=Product.where(shop: 'gateC')
    if product.present?
      render json: { products: product }, status: :ok
    else
      render json: { error: "Products not found" }, status: :not_found
    end
  end

    def allproductspipeline
    product=Product.where(shop: 'pipeline')
    if product.present?
      render json: { products: product }, status: :ok
    else
      render json: { error: "Products not found" }, status: :not_found
    end
  end

  def createproduct
    products= Product.create(name:params[:product],shop:params[:shop],quantity:params[:quantity],price:params[:price],category_id:params[:category])
    if products.save
      render json: products , status: :ok
    else
      render json:products.errors
    end
  end

  
end
