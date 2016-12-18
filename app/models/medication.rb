class Medication < ApplicationRecord
  has_many :prescribtion_details
  has_many :prescribtions, :through => :prescribtion_details
  validates :md_name, presence: true
  validates :md_description, presence: true
end
