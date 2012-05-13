module UserProfile
  class Project < ActiveRecord::Base
    attr_accessible :company_name, :description, :end_date, :name, :on_going, :start_date, :user_id
        belongs_to :user,:class_name => UserProfile.user_class.to_s
  end
end
