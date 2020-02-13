class ProductsController < ApplicationController
	def index
<<<<<<< HEAD
		@products = Product.all #商品全件載せる adminとの連携を考えないと
=======
		@admin_products = Product.all
		@admin_product = Product.new
>>>>>>> 6c8281cddfb65eea788462d40d91eb3be893974b
	end
	def show
		@cart_product = CartProduct.new
		@admin_product = Product.find(params[:id])
	end

	private
	def params_admin_product
    params.require(:product).permit(:product_image, :name, :text, :price)
  end

end
