class ChangeColumnToCartProduct < ActiveRecord::Migration[5.2]
	def up
		change_column :cart_products, :count, :integer, null: false
	end
	def down
		change_column :cart_products, :count, :integer
	end
end
