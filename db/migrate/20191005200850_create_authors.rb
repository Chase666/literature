class CreateAuthors < ActiveRecord::Migration[5.2]
  def change
    create_table :authors do |t|
      t.string :name
      t.text :bio
      t.date :dob

      t.timestamps
    end
  end
end
