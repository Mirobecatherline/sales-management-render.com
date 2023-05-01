class CategoriesController < ApplicationController
    def index
        classes= Category.all
        render json: {categories: classes}, status: :ok
    end
end
