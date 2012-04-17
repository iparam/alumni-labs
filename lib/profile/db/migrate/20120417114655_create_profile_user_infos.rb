class CreateProfileUserInfos < ActiveRecord::Migration
  def change
    create_table :profile_user_infos do |t|
      t.string :headline
      t.text :goal
      t.text :specialities
      t.integer :user_id

      t.timestamps
    end
  end
end
