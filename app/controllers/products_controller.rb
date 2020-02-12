class ProductsController < ApplicationController
	def index
		@products = Product.all #商品全件載せる adminとの連携を考えないと
	end
	def show
		#@product = Product.find(params[:id])
	end
end
