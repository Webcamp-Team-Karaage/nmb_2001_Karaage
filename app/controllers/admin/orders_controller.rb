class Admin::OrdersController < ApplicationController
	def index
		@admin_orders = Order.all
	end

	def show
	end
end