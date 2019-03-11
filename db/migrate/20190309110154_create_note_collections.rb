class CreateNoteCollections < ActiveRecord::Migration[5.2]
  def change
    create_table :note_collections do |t|
      t.string :name
      t.references :user, foreign_key: true
      t.references :note, foreign_key: true

      t.timestamps
    end
  end
end
