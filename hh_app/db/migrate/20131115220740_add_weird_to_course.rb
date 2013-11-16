class AddWeirdToCourse < ActiveRecord::Migration
  def change
  	add_column :courses, :weird, :integer, :default => 0
  	add_column :courses, :editor_pick, :boolean, :default => false
  end
end
