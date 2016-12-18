class Doctor < ApplicationRecord
  validates :doc_name,presence: true, length: {minimum: 4, maximum: 50}
  validates :doc_office_no, :numericality => { :greater_than_or_equal_to => 0}
  validates :doc_fee, :numericality => {:greater_than_or_equal_to =>0}
  belongs_to :specialty
end
