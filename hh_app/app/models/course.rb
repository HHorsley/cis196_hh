class Course < ActiveRecord::Base
  attr_accessible :department, :desired_instructor, :desired_material, :num_users_interested, :topic
end
