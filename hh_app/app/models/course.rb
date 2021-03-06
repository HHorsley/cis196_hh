class Course < ActiveRecord::Base

	acts_as_voteable

	belongs_to :user
  	attr_accessible :department, :desired_instructor, :description, :num_users_interested, :topic, :user_id, :user_type

  	validates :topic, presence: true, uniqueness: true
  	validates :user_id, presence: true

    scope :home_top, -> { plusminus_tally.order('plusminus_tally DESC').limit(3)}
    scope :top, -> { plusminus_tally.order('plusminus_tally DESC').limit(15)}
    scope :home_editor_picks, -> { where(editor_pick: true).limit(3)}
    scope :editor_picks, -> { where(editor_pick: true).limit(15)}
    scope :home_weird, -> { order('weird DESC').limit(3)}
    scope :weird, -> { order('weird DESC').limit(15)}
    scope :by_newest, -> { order('created_at DESC').limit(15)}
    scope :by_dept, -> { order(:department).limit(20)}

end
