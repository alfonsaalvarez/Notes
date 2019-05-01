class RemoveTableResquest < ActiveRecord::Migration[5.2]
  def change
  	drop_table :column_resquests
  end
end
