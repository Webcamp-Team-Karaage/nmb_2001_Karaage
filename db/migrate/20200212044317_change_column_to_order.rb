class ChangeColumnToOrder < ActiveRecord::Migration[5.2]
  def up
  	change_column :orders, :postage, :integer, null: false, default: 800
  	change_column :orders, :status, :integer, null: false, default: 0
  end

  def down
  	change_column :orders, :postage, :integer
  	change_column :orders, :status, :integer
  end
end
