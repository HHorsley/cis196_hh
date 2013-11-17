class Course < ActiveRecord::Base

	acts_as_voteable

	belongs_to :user
  	attr_accessible :department, :desired_instructor, :description, :num_users_interested, :topic, :user_id

  	validates :topic, presence: true, uniqueness: true
  	validates :user_id, presence: true

    scope :home_top, -> { order(:votes_for).limit(3)}
    scope :top, -> { order(:votes_for).limit(15)}
    scope :home_editor_picks, -> { order(:editor_pick).limit(3)}
    scope :editor_picks, -> { order(:editor_pick).limit(10)}
    scope :home_weird, -> { order(:weird).limit(3)}
    scope :weird, -> { order(:weird).limit(10)}

end
