class Admin::OrdersController < ApplicationController
	def index
		@admin_order_products = OrderProduct.all
	end

	def show
	end
end
