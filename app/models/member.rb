class Member < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
	has_many :shipping_addresses, dependent: :destroy
	has_many :orders #memberを削除した時に注文履歴は消えてはいけないのでdependent: :destroyは書いてないです
	has_many :products, dependent: :destroy,through: :cart_products

	enum status: {有効: 0, 退会済: 1}
	validates :postal_code, format: { with: /\A\d{3}[-]\d{4}\z/ }
	def address_name
		self.first_name + self.last_name
	end
end
