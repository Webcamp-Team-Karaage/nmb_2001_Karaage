class ShippingAddress < ApplicationRecord
	belongs_to :member

	validates :postal_code, presence: true
	validates :address, presence: true
	validates :address_name, presence: true

	def shippinng
		self.postal_code + self.address + self.address_name
	end
end
