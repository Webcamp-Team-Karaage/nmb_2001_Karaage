class AddIndexToMembersFirstName < ActiveRecord::Migration[5.2]
  def change
  	add_index :members, :first_name
  end
end
