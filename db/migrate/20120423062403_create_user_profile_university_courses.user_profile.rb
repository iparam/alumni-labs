# This migration comes from user_profile (originally 20120423060744)
class CreateUserProfileUniversityCourses < ActiveRecord::Migration
  def change
    create_table :user_profile_university_courses do |t|
      t.string :name
      t.integer :university_profile_id
      t.timestamps
    end
  end
end
