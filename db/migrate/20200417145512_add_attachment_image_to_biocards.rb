class AddAttachmentImageToBiocards < ActiveRecord::Migration[5.2]
  def self.up
    change_table :biocards do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :biocards, :image
  end
end
