class ProductsController < ApplicationController
	def index
		@products = Product.all #商品全件載せる
	end
	def show
		#@product = Product.find(params[:id])
	end
end
