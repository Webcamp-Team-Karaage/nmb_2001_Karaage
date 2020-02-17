class Admin::ProductsController < ApplicationController
  def new
    @admin_product = Product.new

    @genres = Genre.where(status: 'true')


  end

  def index
    @admin_products = Product.all
    
    
  end

  def create
    @admin_products = Product.all
    @admin_product = Product.new(params_admin_product)
    if @admin_product.save!
      redirect_to admin_product_path(@admin_product)
    else
      render :new
    end
  end

  def show
    @admin_product = Product.find(params[:id])
  end

  def edit
    @genres = Genre.where(status: 'true')

    @admin_product = Product.find(params[:id])
  end

  def update
    @admin_product = Product.find(params[:id])
    @admin_product.update(params_admin_product)
    if @admin_product.save
      redirect_to admin_product_path
    else
      render :edit
    end
  end

  private

  def params_admin_product
    params.require(:product).permit(:name, :text, :genre_id, :price,:status,:product_image)
  end

end
