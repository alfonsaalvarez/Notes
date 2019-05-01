class RemoveColumnResquest < ActiveRecord::Migration[5.2]
  def change
  	remove_column :resquests, :userO
  end
end
