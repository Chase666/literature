class AddImageToAuthors < ActiveRecord::Migration[5.2]
  def change
    add_attachment :authors, :image
  end
end
