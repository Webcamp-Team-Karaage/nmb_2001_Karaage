class AddFirstNameToMembers < ActiveRecord::Migration[5.2]
  def change
    add_column :members, :first_name, :string
    add_column :members, :last_name, :string
    add_column :members, :first_name_kana, :string
    add_column :members, :last_name_kana, :string
    add_column :members, :postal_code, :string
    add_column :members, :address_name, :text
    add_column :members, :phone, :string
    add_column :members, :status, :integer, default: 0
  end
end
