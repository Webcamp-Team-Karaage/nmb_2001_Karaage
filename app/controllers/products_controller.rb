class ProductsController < ApplicationController
	def index
		@admin_products = Product.all
		@admin_product = Product.new
	end
	def show
		@cart_product = CartProduct.new
		@admin_product = Product.find(params[:id])
		@cart_product.save
	end
private 

end
