module UserProfile
  class Engine < ::Rails::Engine
    isolate_namespace UserProfile
   initializer 'user_profile.helper' do |app|  
     ActionView::Base.send :include, UserProfile::UserProfilesHelper  
    end  
  end
end
