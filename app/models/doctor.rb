class Doctor < ApplicationRecord
  validates :doc_name,presence: true, length: {minimum: 4, maximum: 50}
  validates :doc_office_no, :numericality => { :greater_than_or_equal_to => 0}
  validates :doc_fee, :numericality => {:greater_than_or_equal_to =>0}

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email,presence: true,length: { maximum: 255 },
  format: { with: VALID_EMAIL_REGEX },
  uniqueness: { case_sensitive: false }

  has_secure_password
  validates :password,length: { minimum: 6 }

  belongs_to :specialty
end
