class Admin::OrdersController < ApplicationController
	def index
	   @admin_orders = Order.all
=begin
        @total_count = {}
        @admin_orders.each do |order|
            sum = 0
         order.order_products.each do |order_product|  
             sum += order_product.count
         end
         @total_count[order.id] = sum 
        end
        puts @total_count
=end
   end


	def show
	end
end