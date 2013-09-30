class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :department
      t.string :topic
      t.string :desired_instructor
      t.string :desired_material
      t.integer :num_users_interested

      t.timestamps
    end
  end
end
