class OrdersController < ApplicationController

	def index
		@member = current_member
		@orders = @member.orders
	end

	def show
		@order = Order.find(params[:id])
	end

	def input
		@order = Order.new
		@member = current_member
		@shipping_addresses = ShippingAddress.all
	end
	def new
		order = Order.new
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
		end
		@cart_products = CartProduct.where(member_id: current_member)
		@price_sum = 0
		@cart_products.each do |cart_product|
			@price = cart_product.count * cart_product.product.price
			@price_sum = @price + @price_sum
		end
		#@order = Order.find(order_params[:id])
		#order.save
		#redirect_to orders_thanks_path
	end
	def create
		@cart_products = CartProduct.where(member_id: current_member)
		@order = Order.new(order_params)
		@order.member_id = current_member.id
		total_price = 0
		@cart_products.each do |cart_product|
			 count = cart_product.count
			 price = (cart_product.product.price*1.1).floor
			 total_price += (count * price) 
		end 
		@order.total_price  = total_price + @order.postage.to_i
		@order.save!
		
		@cart_products.each do |cart_product|
			
			@order_product = OrderProduct.new
			@order_product.product_id = cart_product.product_id
			@order_product.count = cart_product.count
			@order_product.price_tax = (cart_product.product.price * 1.1).floor
			@orders = Order.all
			@order_product.order_id = @order.id 
			@order_product.save!
			cart_product.destroy
		end
		redirect_to orders_thanks_path
	end
	
	def thanks
		
	end

	private
	def order_params
		params.require(:order).permit(:payment, :postal_code, :address, :address_name,:postage)
	end
	def shipping_address_params
		params.require(:shipping_address).permit(:postal_code, :address, :address_name)
	end
end
