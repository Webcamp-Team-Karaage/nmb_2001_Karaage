class RemoveAddressNameFromMembers < ActiveRecord::Migration[5.2]
  def change
    remove_column :members, :address_name, :text
  end
end
