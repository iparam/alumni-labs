module UserProfile
  class Education < ActiveRecord::Base
    attr_accessible :course, :degree, :end_date, :grade, :name, :start_date, :user_id
    belongs_to :user,:class_name => UserProfile.user_class.to_s
    
  end
end
