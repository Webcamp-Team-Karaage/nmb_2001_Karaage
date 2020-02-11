class CreateShippingAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :shipping_addresses do |t|
      t.integer :memder_id
      t.string :address_name
      t.string :postal_code
      t.text :address
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
