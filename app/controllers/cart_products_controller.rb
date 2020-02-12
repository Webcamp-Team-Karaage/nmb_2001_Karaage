class CartProductsController < ApplicationController
	def index
		@cart_product = CartProduct.new #product単数が必要でいれた
		@cart_products = CartProduct.all #商品全件載せる
		@member = current_member
	end
	def create
		@cart_product = CartProduct.new(cart_product_params)#
		@member_id = current_member.id
		@cart_product.save
		redirect_to cart_products_path
	end
	def update
		@cart_product = CartProduct.find(cart_product_params[:id])#
		@cart_product.update(cart_product_params)
		redirect_to cart_products_path
	end
	def destroy
		@cart_product = CartProduct.find(params[:id])
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
