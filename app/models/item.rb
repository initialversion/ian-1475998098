class Item < ApplicationRecord
  # Direct associations

  belongs_to :bin

  # Indirect associations

  # Validations

  validates :image, :presence => true

end
