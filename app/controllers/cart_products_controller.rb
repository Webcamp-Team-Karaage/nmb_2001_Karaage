class CartProductsController < ApplicationController
	def index
		@cart_product = CartProduct.new #product単数が必要でいれた
		@cart_products = CartProduct.all #商品全件載せる

		@admin_products = Product.all
		#@admin_product = Product.find(params[:id])
	end
	def create
		@cart_product = CartProduct.new(cart_product_params)
		@cart_product.member_id = current_member.id
		@product = Product.find(params[:cart_product][:product_id])
		@cart_product.product_id = @product.id
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
		redirect_to cart_products_path
	end
	def destroy_all
		@cart_products = CartProduct.all
		@cart_products.destroy_all
		redirect_to cart_products_path
	end

	private
	def cart_product_params
		params.require(:cart_product).permit(:count, :member_id, :product_id)
	end

end
