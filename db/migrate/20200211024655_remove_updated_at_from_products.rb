class RemoveUpdatedAtFromProducts < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :updated_at, :datetime
  end
end
