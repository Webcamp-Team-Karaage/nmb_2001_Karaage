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
		@order_product = OrderProduct.where(order_id:@admin_order.id)
		@order_products = @admin_order.order_products
		@price_sum = 0
		@admin_order.order_products.each do |order_product|
			@price = order_product.count * order_product.product.price
			@price_sum = @price + @price_sum
		end

	end

	def update
		@admin_order = Order.find(params[:id]) 
		@order_products = OrderProduct.where(order_id: params[:id])
		#@order_product = @order_products.find_by(id: params[:order_product][:product_id])

		if params[:order_product]
			@order_products.each do |order_product|
				if params[:order_product][:status] == "製作中"
					@admin_order.status = "製作中"
					@admin_order.update(status: @admin_order.status)
					order_product.update(order_product_params)
				elsif params[:order_product][:status] == "製作完了"
					@admin_order.status = "発送準備中"
					@admin_order.update(status: @admin_order.status)
					order_product.status = params[:order_product][:status]
					order_product.update(order_product_params)
				else
					order_product.update(order_product_params)
				end
			end
		elsif params[:order]
			
			#@order_product = @order_products.find_by(id: params[:order][:product_id])
			if params[:order][:status] == "入金確認"
				@admin_order.update(order_params)
				@order_products.each do |order_product|
					order_product.status = "製作中"
					order_product.update(status: order_product.status)
				end			
			else
				@admin_order.update(order_params)
			end
			
		end

		
		
		#order_product
=begin
		if params[:order_product][:status] == "製作中"
			@admin_order.status = "制作中"
			@admin_order.update(status: @admin_order.status)
			@order_product.update(order_product_params)
		elsif params[:order_product][:status] == "製作完了"
			@admin_order.status = "発送準備中"
			@admin_order.update(status: @admin_order.status)
			@order_product.status = params[:order_product][:status]
			@order_product.update(order_product_params)
		else
			@order_product.update(order_product_params)
		end

		#order
		if params[:order][:status] == "入金確認"
			@order_product.status = "制作中"
			@order_product.update(status: @order_product.status)
		else
			@order.update(order_params)
		end
=end


		
		
		
		
		redirect_to admin_order_path
	end

	private
	def order_params
		
			params.require(:order).permit(:payment, :address_name, :postal_code, :address, :postage, :status, :total_price, :float,:product_id)
	end
	def order_product_params
		params.require(:order_product).permit(:status)
	end
		
end