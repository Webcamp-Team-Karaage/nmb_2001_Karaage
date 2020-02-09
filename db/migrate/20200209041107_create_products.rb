class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.integer :genre_id
      t.string :name
      t.text :text
      t.integer :price
      t.integer :status
      t.string :product_image_id

      t.timestamps
    end
  end
end
