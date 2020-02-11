class Product < ApplicationRecord
	has_many :cart_products, dependent: :destroy
	has_many :order_products, dependent: :destroy
	belongs_to :genre
	attachment :product_image #画像アップ用ﾒｿｯﾄﾞ
end
