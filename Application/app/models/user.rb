class User < ApplicationRecord
  has_secure_password
  has_many :grades
  
  validates :email, presence: true, uniqueness: true
end
