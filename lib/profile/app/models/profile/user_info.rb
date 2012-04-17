module Profile
  class UserInfo < ActiveRecord::Base
    attr_accessible :goal, :headline, :specialities, :user_id
  end
end
