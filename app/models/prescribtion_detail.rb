class PrescribtionDetail < ApplicationRecord
  belongs_to :prescribtion
  belongs_to :medication
end
