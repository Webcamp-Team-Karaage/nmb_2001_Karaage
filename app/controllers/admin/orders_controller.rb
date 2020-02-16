class Admin::OrdersController < ApplicationController
	def index
		@admin_orders = Order.all

		# @order = @admin_orders.order_product

		# @order.each do |order|
     		# @orderproduct.each do |orderproduct|
        		# count1 = order.orderproduct.count
            	# count = count + count1
     		# end
		# end
	end

	def show
	end
end