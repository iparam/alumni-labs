# This migration comes from user_profile (originally 20120423093218)
class CreateUserProfileUserInfos < ActiveRecord::Migration
  def change
    create_table :user_profile_user_infos do |t|
      t.string :name
      t.string :gender
      t.integer :university_profile_id
      t.integer :university_courses_id
      t.integer :user_id
      t.integer :year_of_passing
      t.integer :current_year

      t.timestamps
    end
  end
end
