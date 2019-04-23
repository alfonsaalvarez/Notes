class CreateBelongsToCollections < ActiveRecord::Migration[5.2]
  def change
	drop_table :belongs_to_collections    
	create_table :belongs_to_collections do |t|

      t.timestamps
    end
  end
end
