class Bin < ApplicationRecord
  # Direct associations

  belongs_to :user

  has_many   :items,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
