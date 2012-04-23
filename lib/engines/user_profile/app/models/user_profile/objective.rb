module UserProfile
  class Objective < ActiveRecord::Base
    attr_accessible :area_of_interest, :objective, :specialities, :title, :user_id
    belongs_to :user
  end
end
