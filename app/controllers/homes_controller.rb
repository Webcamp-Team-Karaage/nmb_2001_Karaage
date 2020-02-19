class HomesController < ApplicationController


	def top
		@products = Product.page(params[:page]).reverse_order
		@genres = Genre.all
	end

	def about
	end

end
