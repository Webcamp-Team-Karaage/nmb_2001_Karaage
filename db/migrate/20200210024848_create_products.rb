class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.integer :genre_id
      t.string :name
      t.text :text
      t.integer :price
      t.integer :status
      t.string :products_image_id
      t.datetime :created_at
      t.datetime :update_at

      t.timestamps
    end
  end
end
