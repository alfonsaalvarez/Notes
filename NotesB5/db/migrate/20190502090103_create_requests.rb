class CreateRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :requests do |t|
      t.string :user1
      t.string :user2
      t.boolean :accepted

      t.timestamps
    end
  end
end
