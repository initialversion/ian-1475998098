class Item < ApplicationRecord
  # Direct associations

  has_many   :taggings,
             :dependent => :destroy

  belongs_to :bin

  # Indirect associations

  # Validations

  validates :image, :presence => true

end
