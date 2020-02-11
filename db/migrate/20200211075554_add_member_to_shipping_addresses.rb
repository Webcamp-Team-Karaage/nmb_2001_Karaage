class AddMemberToShippingAddresses < ActiveRecord::Migration[5.2]
  def change
    add_column :shipping_addresses, :member_id, :integer
  end
end
