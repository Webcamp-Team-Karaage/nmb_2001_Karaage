class ProductsController < ApplicationController
	def index
		@admin_products = Product.all
		@admin_product = Product.new
	end
	def show
		@cart_product = CartProduct.new
		@admin_product = Product.find(params[:id])

		#@cart_product.save #個数を保存したいのだが
	end

	private
	def params_admin_product
		params.require(:product).permit(:product_image, :name, :text, :price)
	end

end
