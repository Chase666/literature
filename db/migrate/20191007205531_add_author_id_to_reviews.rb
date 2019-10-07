class AddAuthorIdToReviews < ActiveRecord::Migration[5.2]
  def change
    add_reference :reviews, :author, foreign_key: true
  end
end
