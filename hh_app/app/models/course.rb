class Course < ActiveRecord::Base
	belongs_to :user
  	attr_accessible :department, :desired_instructor, :desired_material, :num_users_interested, :topic, :user_id
end
