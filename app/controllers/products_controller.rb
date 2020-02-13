class ProductsController < ApplicationController
	def index
		@products = Product.all #商品全件載せる adminとの連携を考えないと
	end
	def show
		@product = Product.find(product_params[:id])
	end

	private
	def product_params
		params.require(:product).permit(:count)
	end
end
