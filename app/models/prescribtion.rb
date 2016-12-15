class Prescribtion < ApplicationRecord
  belongs_to :patient
  belongs_to :doctor
  has_many :prescribtion_details
  has_many :medications, :through => :prescribtion_details
end
