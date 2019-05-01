class RemoveColumnResquestD < ActiveRecord::Migration[5.2]
  def change
  	remove_column :resquests, :userD
  end
end
