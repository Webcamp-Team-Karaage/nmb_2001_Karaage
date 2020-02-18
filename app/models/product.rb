class Product < ApplicationRecord

	has_many :members, dependent: :destroy,through: :cart_products
	has_many :order_products, dependent: :destroy

	belongs_to :genre
	attachment :product_image
	enum status:{	販売中:	0,売り切れ:	1 }
	validates :name, presence: true
	validates :text, presence: true
    validates :price, presence: true
	validates :status, presence: true
	validates :genre_id, presence: true
    validates :product_image, presence: true

end
