# This migration comes from user_profile (originally 20120423095039)
class CreateUserProfileProjects < ActiveRecord::Migration
  def change
    create_table :user_profile_projects do |t|
      t.string :name
      t.string :company_name
      t.boolean :on_going
      t.integer :start_date
      t.integer :end_date
      t.text :description
      t.integer :user_id

      t.timestamps
    end
  end
end
