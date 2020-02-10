class AdminProductsController < ApplicationController
  def new
    @admin_product = Product.new
  end

  def index
    @admin_products = Product.all
  end

  def create
    @admin_product = Product.new(params_admin_product)
    @admin_product.save
    
    redirect_to admin_product_path
  end

  def show
    @admin_product = Product.find(params[:id])
  end

  def edit
    @admin_product = Product.find(params[:id])
  end

  def update
    adomin_product = Product.find(params_admin_product)
    adomin_product.update
    redirect_to admin_product_path
  end

  private

  def params_admin_product
    params.require(:product).permit(:name, :text, :genre_id, :price,:status,:products_image_id)
  end
  
end
