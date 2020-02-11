class ShippingAddressesController < ApplicationController

	def index
		@shipping_addresses = ShippingAddress.all
		@shipping_address = ShippingAddress.new
	end

	def create
		@shipping_address = ShippingAddress.new(shipping_address_params)
		@shipping_address.save
		# redirect_to shipping_address_path(@shipping_address)
		# else
			# @shipping_addresses = ShippingAaddress.all
			# render :shipping_address
		# end
	end

	private
	def shipping_address_params
		params.require(:shipping_address).permit(:postal_code, :address, :address_name)
	end
end
