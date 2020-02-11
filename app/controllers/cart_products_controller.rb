class CartProductsController < ApplicationController
	def index
		@cart_products = Cart_Product.all #商品全件載せる
	end
	def create
		@cart_product = Cart_Product.new(cart_product_params)#
		@cart_product.save
		redirect_to cart_products_path
	end
	def update
		@cart_product = Cart_Product.find(cart_product_params[:id])#
		@cart_product.update(cart_product_params)
		redirect_to cart_products_path
	end
	def destroy
		@cart_product = Cart_Product.find(params[:id])
		@cart_product.destroy
		#redirect_to cart_products_path
	end
	def destroy_all
		#@cart_products = CartProduct.all
		cart_product.destroy_all
		#redirect_to cart_products_path
	end

	private
	def cart_product_params
		params.require(:cart_product).permit(:count)
	end
end
