class OrdersController < ApplicationController
	def input
		@order = Order.new
		@member = current_member
		@shipping_addresses = ShippingAddress.all
	end
	def new
		@order = Order.new(order_params)
		@orders = Order.all
		if params[:address_select] == "1"
			@order.postal_code = current_member.postal_code
			@order.address = current_member.address
			@order.address_name = current_member.address_name
		elsif params[:address_select] == "2"
			@shipping_address = ShippingAddress.find(params[:id])
			@order.postal_code = @shipping_address.postal_code
			@order.address = @shipping_address.address
			@order.address_name = @shipping_address.address_name
		else
		end

		#@order = Order.find(order_params[:id])
		#order.save
		#redirect_to orders_thanks_path
	end
	def create
		@order = Order.new(order_params)
		@order.save
		redirect_to orders_thanks_path
	end
	def thanks
	end

	private
	def order_params
		params.require(:order).permit(:payment, :postal_code, :address, :address_name)
	end
	def shipping_address_params
		params.require(:shipping_address).permit(:postal_code, :address, :address_name)
	end
end
