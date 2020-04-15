class AddAuthorIdToBiocards < ActiveRecord::Migration[5.2]
  def change
    add_reference :biocards, :author, foreign_key: true
  end
end
