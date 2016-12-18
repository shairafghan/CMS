class Patient < ApplicationRecord
  validates :pat_name, presence: true, length: {maximum: 4}
  GENDER_TYPES = ["Male", "Female"]
  validates :pat_address, presence: true

end
