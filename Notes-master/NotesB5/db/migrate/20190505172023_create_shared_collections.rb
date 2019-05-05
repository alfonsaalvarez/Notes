class CreateSharedCollections < ActiveRecord::Migration[5.2]
  def change
    create_table :shared_collections do |t|
      t.references :note_collection, foreign_key: true
      t.references :o_user, foreign_key: true
      t.references :d_user, foreign_key: true

      t.timestamps
    end
  end
end
