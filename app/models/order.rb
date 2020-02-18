class Order < ApplicationRecord
	belongs_to :member
	has_many :order_products, dependent: :destroy

	enum payment:{クレジットカード: 0, 銀行振込: 1}
	enum status:{入金待ち: 0, 入金確認: 1, 製作中: 2, 発送準備中: 3, 発送済み: 4}
<<<<<<< HEAD
	
=======

	validates :postal_code, format: { with: /\A\d{3}[-]\d{4}\z/ }
>>>>>>> deb9201f7552af9f67d8b8de5e793ccc52ed9e45
end
