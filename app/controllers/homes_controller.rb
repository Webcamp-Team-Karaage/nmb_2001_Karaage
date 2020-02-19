class HomesController < ApplicationController


	def top
		@products = Product.where(status:"販売中").page(params[:page]).reverse_order
		@genres = Genre.all
	end

	def about
	end

end
