# This migration comes from user_profile (originally 20120423060615)
class CreateUserProfileUniversityProfiles < ActiveRecord::Migration
  def change
    create_table :user_profile_university_profiles do |t|
      t.string :name
      t.text :address
      t.text :summary

      t.timestamps
    end
  end
end
