class ProductsController < ApplicationController
	def index
		@products = Product.all #商品全件載せる
	end
	def show
		@cart_product = CartProduct.new
	end
end
