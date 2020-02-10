class CreateGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :genres do |t|
      t.integer :name
      t.boolean :status
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
