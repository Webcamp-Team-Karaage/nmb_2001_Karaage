class ProductsController < ApplicationController
	def index
		#@admin_products = Product.all
		#@admin_product = Product.new
		@genres = Genre.all
		@genre = Genre.find(params[:id])
		@products = @genre.products
	end
	def show
		@cart_product = CartProduct.new
		@admin_product = Product.find(params[:id])
	end
end
