class ShippingAddressesController < ApplicationController

	before_action :authenticate_member!

	def index
		@shipping_addresses = current_member.shipping_addresses
		@shipping_address = ShippingAddress.new
	end

	def create
		@shipping_address = ShippingAddress.new(shipping_address_params)
		@shipping_address.member_id = current_member.id
		if @shipping_address.save
			redirect_to shipping_addresses_path
		else
			@shipping_addresses = ShippingAddress.all
			render :index
		end
	end

	def edit
		@shipping_address = ShippingAddress.find(params[:id])
		if @shipping_address.member_id != current_member.id
			redirect_to edit_shipping_address_path
		end
	end

	def update
		@shipping_address = ShippingAddress.find(params[:id])
		@shipping_address.update(shipping_address_params)
		redirect_to shipping_addresses_path
		if @shipping_address.member_id != current_member.id
			redirect_to edit_shipping_address_path
		end
	end

	def destroy
		shipping_address = ShippingAddress.find(params[:id])
		shipping_address.destroy
		redirect_to shipping_addresses_path
	end

	private
	def shipping_address_params
		params.require(:shipping_address).permit(:postal_code, :address, :address_name)
	end
end
