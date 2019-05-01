class AddColumnUser < ActiveRecord::Migration[5.2]
  def change
  	add_column :resquests, :user1, :string
    add_column :resquests, :user2, :string
  end
end
