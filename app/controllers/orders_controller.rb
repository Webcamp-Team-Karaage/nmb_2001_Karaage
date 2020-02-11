class OrdersController < ApplicationController
	def input
		@order = Order.new
	end
	def new
	end
	def create
		@order = Order.new(params)
		@order.save
		redirect_to new_order_path
	end
	def thanks
	end
end
