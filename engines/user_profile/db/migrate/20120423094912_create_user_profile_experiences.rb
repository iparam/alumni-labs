class CreateUserProfileExperiences < ActiveRecord::Migration
  def change
    create_table :user_profile_experiences do |t|
      t.string :company_name
      t.string :title
      t.string :location
      t.boolean :is_current
      t.integer :start_date
      t.integer :end_date
      t.text :description
      t.integer :user_id

      t.timestamps
    end
  end
end
