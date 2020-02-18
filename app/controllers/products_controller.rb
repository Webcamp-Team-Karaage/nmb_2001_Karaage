class ProductsController < ApplicationController
	def index
		@genres = Genre.all
		@genre = Genre.find(params[:id])
		@products = @genre.products.page(params[:page]).reverse_order
	end
	def show
		@genres = Genre.all

		@cart_product = CartProduct.new
		@admin_product = Product.find(params[:id])
	end
end
