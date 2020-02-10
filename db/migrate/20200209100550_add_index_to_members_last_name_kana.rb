class AddIndexToMembersLastNameKana < ActiveRecord::Migration[5.2]
  def change
  	add_index :members, :last_name_kana
  end
end
