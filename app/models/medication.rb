class Medication < ApplicationRecord
  has_many :prescribtion_details
  has_many :prescribtions, :through => :prescribtion_details
end
