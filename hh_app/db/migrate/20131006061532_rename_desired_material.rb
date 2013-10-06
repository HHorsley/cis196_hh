class RenameDesiredMaterial < ActiveRecord::Migration
  def self.up
  	rename_column :courses, :desired_material, :description
  end

  def self.down
  end
end
