module UserProfile
  class Engine < ::Rails::Engine
    isolate_namespace UserProfile
  initializer 'user_profile.helper' do |app|  
     ActionView::Base.send :include, UserProfilesHelper  
    end  
    config.to_prepare do
      if UserProfile.user_class
        UserProfile.user_class.attr_accessible :user_info_attributes,:alumni,:objective_attributes
        UserProfile.user_class.attr_accessible :educations_attributes,:projects_attributes,:experiences_attributes
        UserProfile.user_class.has_one :user_info,:class_name=>"UserProfile::UserInfo"
        UserProfile.user_class.has_one :objective,:dependent=>:destroy,:class_name=>"UserProfile::Objective"
        UserProfile.user_class.has_many :educations,:dependent=>:destroy,:class_name=>"UserProfile::Education"
        #,:foreign_key=>"user_id"
        UserProfile.user_class.has_many :expos,:dependent=>:destroy,:class_name=>"UserProfile::Expo"
       #,:foreign_key=>"user_id"
        UserProfile.user_class.has_many :projects,:dependent=>:destroy,:class_name=>"UserProfile::Project"
        #,:foreign_key=>"user_id"
        UserProfile.user_class.has_many :experiences,:dependent=>:destroy,:class_name=>"UserProfile::Experience"
       #,:foreign_key=>"user_id"
        UserProfile.user_class.accepts_nested_attributes_for :educations,:allow_destroy=>true,:reject_if => :all_blank
        UserProfile.user_class.accepts_nested_attributes_for :objective,:allow_destroy=>true,:reject_if => :all_blank
        UserProfile.user_class.accepts_nested_attributes_for :experiences,:allow_destroy=>true,:reject_if => :all_blank
        UserProfile.user_class.accepts_nested_attributes_for :user_info,:allow_destroy=>true,:reject_if => :all_blank
        UserProfile.user_class.accepts_nested_attributes_for :projects,:allow_destroy=>true  ,:reject_if => :all_blank
 
     end

      # add UserProfile helpers to main application
      #::ApplicationController.send :helper, UserProfile::Engine.helpers
    end
  end
end
