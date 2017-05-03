module Api::V1
  class ProductsController < ApiController
    def index
      @products = Product.all

      render json: @products.paginate(page: params[:page], per_page: 12)
    end
  end
end
