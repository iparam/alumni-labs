Rails.application.routes.draw do

  mount UserProfile::Engine => "/user_profile"
end
