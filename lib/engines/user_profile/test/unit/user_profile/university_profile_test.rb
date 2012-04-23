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

require 'test_helper'

module UserProfile
  class UniversityProfileTest < ActiveSupport::TestCase
    # test "the truth" do
    #   assert true
    # end
  end
end
