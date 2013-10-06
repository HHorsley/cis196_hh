class Course < ActiveRecord::Base
	belongs_to :user
  	attr_accessible :department, :desired_instructor, :description, :num_users_interested, :topic, :user_id
end
