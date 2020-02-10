class Product < ApplicationRecord
<<<<<<< HEAD
=======
	has_many :cart_products, dependent: :destroy
	has_many :order_products, dependent: :destroy
	belongs_to :genre	
>>>>>>> origin/master
end
