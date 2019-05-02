class AddColumnsToBelongs < ActiveRecord::Migration[5.2]
  def change
    add_reference :belongs_to_collections, :note, foreign_key: true
    add_reference :belongs_to_collections, :col, foreign_key: true
  end
end
