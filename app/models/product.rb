class Product < ApplicationRecord

	has_many :cart_products, dependent: :destroy
	has_many :order_products, dependent: :destroy

	belongs_to :genre
	attachment :products_image
	enum status:{	販売中:	0,売り切れ:	1 }


end