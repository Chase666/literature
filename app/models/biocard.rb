class Biocard < ApplicationRecord
  belongs_to :author
  has_attached_file :image,
                    styles: {
                      thumb: ["130x130#", :jpeg],
                      original: [:jpeg]
                    }
  validates_attachment :image,
                     content_type: { content_type: /\Aimage\/.*\z/ },
                     size: { less_than: 1.megabyte }

end
