class ShippingAddress < ApplicationRecord
	belongs_to :member, optional: true

	# validates :postal_code, presence: true
	# validates :address, presence: true
	# validates :address_name, presence: true
end
