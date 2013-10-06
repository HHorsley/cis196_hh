class ChangeDesiredMaterial < ActiveRecord::Migration
  def self.up
  	change_column :courses, :desired_material, :text
  end

  def self.down
  	change_column :courses, :desired_material, :string
  end
end
