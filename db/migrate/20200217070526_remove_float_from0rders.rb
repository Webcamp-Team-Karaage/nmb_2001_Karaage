class RemoveFloatFrom0rders < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :float
  end
end
