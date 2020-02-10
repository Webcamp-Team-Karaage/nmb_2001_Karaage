class ShippingAddressesController < ApplicationController

	def index
		@sipping_addresses = Sippin_gaddress.all
		@sipping_address = Sipping_address.new
	end

	def create
		@sipping_address = Book.new(sipping_address_params)
		if @bsipping_address.save
			redirect_to sipping_address_path(@sipping_address)
		else
			@sipping_addresses = Sippin_gaddress.all
			render :index
		end
	end

	private
	def sipping_address_params
		params.require(:sipping_address).permit(:postal_code, :address, :address_name)
	end
end
