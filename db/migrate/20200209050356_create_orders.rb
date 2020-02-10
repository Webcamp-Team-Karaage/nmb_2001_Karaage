class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :member_id
      t.integer :payment
      t.string :address_name
      t.string :postal_code
      t.text :address
      t.integer :postage
      t.integer :status
      t.string :total_price
      t.string :float

      t.timestamps
    end
  end
end
