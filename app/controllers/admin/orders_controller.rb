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
		@admin_order = Order.find(params[:id])

		@order_products = @admin_order.order_products
		@price_sum = 0
		@admin_order.order_products.each do |order_product|
			@price = order_product.count * order_product.product.price
			@price_sum = @price + @price_sum
		end

	end

	def update
		@admin_order = Order.find(params[:id])
		@admin_order.save
		redirect_to admin_order_path
	end

	private
	def order_params
  	params.require(:order).permit(:payment, :address_name, :postal_code, :address, :postage, :status, :total_price, :float)
	end
end