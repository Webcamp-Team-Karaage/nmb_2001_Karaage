class CartProductsController < ApplicationController
	def index
		@cart_products = CartProduct.where(member_id:current_member)

		@total_price = 0
		@cart_products.each do |cart_product|
			@total_price += cart_product.product.price * cart_product.count
		end
	end
	def create
		@cart_product = CartProduct.new(cart_product_params)
		@cart_product.member_id = current_member.id
		@product = Product.find(params[:cart_product][:product_id])
		@cart_product.product_id = @product.id
		if @cart_product.count != 0 && @cart_product.save
			redirect_to cart_products_path
		else 
			redirect_to product_path(@product)
		end
	end
	def update
		@cart_product = CartProduct.find(params[:id])
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
