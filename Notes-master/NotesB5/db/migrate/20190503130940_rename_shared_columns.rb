class RenameSharedColumns < ActiveRecord::Migration[5.2]
  def change
	remove_column :shared_notes, :user1_id
	remove_column :shared_notes, :user2_id

	add_reference :shared_notes, :o_user, foreing_key: true
	add_reference :shared_notes, :d_user, foreing_key: true
  end
end
