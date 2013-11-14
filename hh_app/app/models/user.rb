class User < ActiveRecord::Base

  acts_as_voter
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :email, :name, :password, :password_confirmation

  validates :name, presence: true 
  validates :password, length: {within: 5..15} 
  emailFormatValidation =/[a-z.-]+@[a-z \d -.]+[.][a-z]+/i 
  validates :email, format: {with: emailFormatValidation}, uniqueness: true
  validates :password, confirmation: true




end
