class CreateUserProfileProjects < ActiveRecord::Migration
  def change
    create_table :user_profile_projects do |t|
      t.string :name
      t.string :company_name
      t.boolean :on_going
      t.datetime :start_date
      t.datetime :end_date
      t.text :description
      t.integer :user_id

      t.timestamps
    end
  end
end
