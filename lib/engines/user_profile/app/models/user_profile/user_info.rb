module UserProfile
  class UserInfo < ActiveRecord::Base
   GENDER=["male","female"] 
    attr_accessible :current_year, :gender, :name, :university_courses_id, :university_profile_id, :user_id, :year_of_passing
    belongs_to :user
    validates_inclusion_of :gender,:in=>GENDER
    belongs_to :university_profile
  end
end
