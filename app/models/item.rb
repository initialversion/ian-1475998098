class Item < ApplicationRecord
  # Direct associations

  has_many   :taggings,
             :dependent => :destroy

  belongs_to :bin

  # Indirect associations

  has_many   :tags,
             :through => :taggings,
             :source => :tag

  # Validations

  validates :image, :presence => true

end
