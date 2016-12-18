class Specialty < ApplicationRecord
  validates :sp_name, presence: true
  validates :sp_description, presence: true
end
