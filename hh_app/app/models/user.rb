class User < ActiveRecord::Base
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

  has_many :evaluations, class_name: "RSEvaluation", as: :source
  has_reputation :votes, source: {reputation: :votes, of: :courses}, aggregated_by: :sum

  def voted_for?(course)
    evaluations.where(target_type: course.class, target_id: course.id).present?
  end
end
