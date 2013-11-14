class Course < ActiveRecord::Base

	acts_as_voteable

	belongs_to :user
  	attr_accessible :department, :desired_instructor, :description, :num_users_interested, :topic, :user_id

  	validates :topic, presence: true, uniqueness: true
  	validates :user_id, presence: true

    scope :rank, -> { order(:topic).limit(10)}

end
