class AddIndexToMembersLastName < ActiveRecord::Migration[5.2]
  def change
  	add_index :members, :last_name
  end
end
