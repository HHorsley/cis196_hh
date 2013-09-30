class CreatePennReferenceInfos < ActiveRecord::Migration
  def change
    create_table :penn_reference_infos do |t|
      t.string :department
      t.string :instructor_firstname
      t.string :instructor_lastname

      t.timestamps
    end
  end
end
