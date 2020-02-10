class Member < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
	has_many :shipping_addresses, dependent: :destroy
	has_many :orders #memberを削除した時に注文履歴は消えてはいけないのでdependent: :destroyは書いてないです
	has_many :cart_products, dependent: :destroy
end
