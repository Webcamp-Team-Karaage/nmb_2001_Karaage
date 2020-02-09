class CreateOrderProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :order_products do |t|
      t.integer :order_id
      t.integer :product_id
      t.float :price_tax
      t.integer :count
      t.integer :status
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
