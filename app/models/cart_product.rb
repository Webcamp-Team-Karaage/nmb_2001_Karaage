class CartProduct < ApplicationRecord
	belongs_to :member
	belongs_to :product

	validates :count, presence: true
end
