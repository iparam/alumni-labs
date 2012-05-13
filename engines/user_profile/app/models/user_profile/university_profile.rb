# == Schema Information
#
# Table name: user_profile_university_profiles
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  address    :text
#  summary    :text
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

module UserProfile
  class UniversityProfile < ActiveRecord::Base
    attr_accessible :address, :name, :summary,:university_courses_attributes
    validates_presence_of :name
    has_many :university_courses
    accepts_nested_attributes_for :university_courses,:allow_destroy=>true
    has_many :user_infos
  end
end
