class Admin::OrdersController < ApplicationController
	def index
	   @admin_orders = Order.all

       @total_count = {}
       @admin_orders.each do |order|
         sum = 0
         order.order_products.each do |order_product|
            sum += order_product.count
         end
         @total_count[order.id] = sum
       end
       puts @total_count

	end

	def show
		@admin_order = Order.find(params[:id])
		@orders = Order.where(status: 0)
	end

	private
	def order_params
  	params.require(:order).permit(:payment, :address_name, :postal_code, :address, :postage, :status, :total_price, :float)
	end
end