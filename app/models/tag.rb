class Tag < ApplicationRecord
  # Direct associations

  has_many   :taggings,
             :dependent => :destroy

  # Indirect associations

  has_many   :items,
             :through => :taggings,
             :source => :item

  # Validations

end
