# This migration comes from user_profile (originally 20120423095104)
class CreateUserProfileEducations < ActiveRecord::Migration
  def change
    create_table :user_profile_educations do |t|
      t.string :name
      t.string :degree
      t.string :course
      t.integer :start_date
      t.integer :end_date
      t.string :grade
      t.integer :user_id

      t.timestamps
    end
  end
end
