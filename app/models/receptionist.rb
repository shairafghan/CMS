class Receptionist < ApplicationRecord
  validates :rec_name, presence: true, length: {minimum:4}
end
