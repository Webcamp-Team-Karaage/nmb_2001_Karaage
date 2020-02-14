class ProductsController < ApplicationController
	def index
		@admin_products = Product.all
		@admin_product = Product.new
	end
	def show
		@cart_product = CartProduct.new
		@admin_product = Product.find(params[:id])
	end
	def create
		@product = Product.find(params[:id])
		@cart_product = CartProduct.new(cart_product_params)
		@cart_product =  CartProduct.new(member_id:current_member.id, product_id:@product.id)
		@cart_product.save!
	end
	private
	def cart_product_params
    params.require(:cart_product_params).permit(:count,:product_id)
  end

end
