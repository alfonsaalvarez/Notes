class CreateSharedNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :shared_notes do |t|
      t.references :note, foreign_key: true
      t.references :user1, foreign_key: true
      t.references :user2, foreign_key: true

      t.timestamps
    end
  end
end
