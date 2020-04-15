class CreateBiocards < ActiveRecord::Migration[5.2]
  def change
    create_table :biocards do |t|
      t.text :description
      t.string :name
      t.integer :year
      
      t.timestamps
    end
  end
end
