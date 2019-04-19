class CreateBelongsToCollections < ActiveRecord::Migration[5.2]
  def change
    create_table :belongs_to_collections do |t|
      t.references :note_id
      t.references :col_id

      t.timestamps
    end
  end
end
