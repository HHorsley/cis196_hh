class AddTypesToUser < ActiveRecord::Migration
  def change
  	add_column :users, :type, :string, :default => "n/a"
  end
end
