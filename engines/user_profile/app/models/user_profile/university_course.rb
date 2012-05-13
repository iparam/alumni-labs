# == Schema Information
#
# Table name: user_profile_university_courses
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

module UserProfile
  class UniversityCourse < ActiveRecord::Base
    attr_accessible :name
    validates_presence_of :name
    belongs_to :university_profile
  end
end
