class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation

  validates :name, presence: true 
  validates :password, length: {within: 5..15} 
  emailFormatValidation =/[a-z.-]+@[a-z \d -.]+[.][a-z]+/i 
  validates :email, format: {with: emailFormatValidation}, uniqueness: true
end
