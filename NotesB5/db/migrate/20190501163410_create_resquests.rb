class CreateResquests < ActiveRecord::Migration[5.2]
  def change
    create_table :resquests do |t|
      t.string :userO
      t.string :userD
      t.boolean :accepted

      t.timestamps
    end
  end
end
