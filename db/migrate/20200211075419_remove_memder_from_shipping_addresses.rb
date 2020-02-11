class RemoveMemderFromShippingAddresses < ActiveRecord::Migration[5.2]
  def change
    remove_column :shipping_addresses, :memder_id, :integer
  end
end
