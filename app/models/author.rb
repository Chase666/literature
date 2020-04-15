class Author < ApplicationRecord
  has_many :reviews
  has_many :biocards
  has_attached_file :image,
                    styles: {
                      thumb: ["300x300#", :jpeg],
                      original: [:jpeg]
                    }

  validates_attachment :image,
                     content_type: { content_type: /\Aimage\/.*\z/ },
                     size: { less_than: 1.megabyte },
                     url: "/system/:hash.:extension",
                     hash_secret: "f808339f3042174df519539e79c39bd9ea13fd09ff7a38e8f0e05ceb39fb5fa61c16b897c128b9f18afbc1dafc62162311410e2d4209ea9b8e3fd65d4e94190e"
end
