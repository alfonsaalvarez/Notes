class AddImage < ActiveRecord::Migration[5.2]
  def change
	add_reference :notes, :image, index: true
  end
end
