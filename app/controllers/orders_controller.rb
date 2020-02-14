class OrdersController < ApplicationController
	def input
		@order = Order.new
		@member = current_member
		@shipping_addresses = ShippingAddress.all
	end
	def new
<<<<<<< HEAD
		order = Order.new
		@orders = Order.all
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
