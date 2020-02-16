class Admin::OrdersController < ApplicationController
	def index
        path = Rails.application.routes.recognize_path(request.referrer)

        if request.referrer == "http://localhost:3000/admins/top"
                @admin_orders = Order.where(created_at: Time.zone.now.beginning_of_day..Time.zone.now.end_of_day)
        elsif request.referrer.include?("http://localhost:3000/admin/members/")
                @member = Member.find(params[:id])
                @admin_orders = @member.orders
        else
                @admin_orders = Order.all
        end
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