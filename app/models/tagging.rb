class Tagging < ApplicationRecord
  # Direct associations

  belongs_to :item

  belongs_to :tag

  # Indirect associations

  # Validations

end
