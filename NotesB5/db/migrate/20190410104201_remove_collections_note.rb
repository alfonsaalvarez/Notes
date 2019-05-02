class RemoveCollectionsNote < ActiveRecord::Migration[5.2]
  def change
	remove_column :note_collections, :note_id
  end
end
