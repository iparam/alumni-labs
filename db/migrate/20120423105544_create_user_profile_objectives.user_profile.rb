# This migration comes from user_profile (originally 20120423095208)
class CreateUserProfileObjectives < ActiveRecord::Migration
  def change
    create_table :user_profile_objectives do |t|
      t.string :title
      t.text :objective
      t.text :specialities
      t.text :area_of_interest
      t.integer :user_id

      t.timestamps
    end
  end
end
