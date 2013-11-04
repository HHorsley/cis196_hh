class Course < ActiveRecord::Base
	belongs_to :user
  	attr_accessible :department, :desired_instructor, :description, :num_users_interested, :topic, :user_id

  	validates :topic, presence: true, uniqueness: true
  	validates :user_id, presence: true

  	has_reputation :votes,
      source: :user,
      aggregated_by: :sum

end
