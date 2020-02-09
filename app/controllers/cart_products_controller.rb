class CartProductsController < ApplicationController
	def index
		@cart_products = CartProduct.all #商品全件載せる
	end
	def create
	end
	def update
		#@cart_product = Cart_Product.find(params[:id])
		#@cart_product.update(cart_product_params)
		#redirect_to cart_products_path
	end
	def destroy
		@cart_product = Cart_Product.find(params[:id])
		@cart_product.destroy
		redirect_to cart_products_path
	end
	def destroy_all
		cart_product.destroy_all
	end
end
