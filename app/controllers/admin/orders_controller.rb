class Admin::OrdersController < ApplicationController
	def index
		@admin_orders = OrderProduct.all
	end

	def show
	end
end
