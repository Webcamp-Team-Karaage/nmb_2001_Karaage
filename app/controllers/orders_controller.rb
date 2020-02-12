class OrdersController < ApplicationController
	def input
		@order = Order.new
	end
	def new
	end
	def create
		order = Order.new(order_params)
		order.save
		redirect_to new_order_path
	end
	def thanks
	end

	private
	def order_params
		params.require(:order).permit(:postal_code, :address, :address_name)
	end
end
