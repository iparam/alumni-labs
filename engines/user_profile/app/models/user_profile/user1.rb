#module UserProfile
#   class User < ActiveRecord::Base
#     set_inheritance_column nil
#     set_table_name 'users'   
#     attr_accessible :user_info_attributes,:alumni,:objective_attributes,:educations_attributes,:projects_attributes,:experiences_attributes
#     has_one :user_info,:class_name=>"UserProfile::UserInfo"
#     #,:foreign_key=>"user_id"
#        has_one :objective,:dependent=>:destroy,:class_name=>"UserProfile::Objective"#,:foreign_key=>"user_id"
#       has_many :educations,:dependent=>:destroy,:class_name=>"UserProfile::Education"#,:foreign_key=>"user_id"
#       has_many :expos,:dependent=>:destroy,:class_name=>"UserProfile::Expo"#,:foreign_key=>"user_id"
#        has_many :projects,:dependent=>:destroy,:class_name=>"UserProfile::Project"#,:foreign_key=>"user_id"
#       has_many :experiences,:dependent=>:destroy,:class_name=>"UserProfile::Experience"#,:foreign_key=>"user_id"
#   accepts_nested_attributes_for :educations,:allow_destroy=>true,:reject_if => :all_blank
#   accepts_nested_attributes_for :objective,:allow_destroy=>true,:reject_if => :all_blank
#   accepts_nested_attributes_for :experiences,:allow_destroy=>true,:reject_if => :all_blank

#   accepts_nested_attributes_for :user_info,:allow_destroy=>true,:reject_if => :all_blank
#   accepts_nested_attributes_for :projects,:allow_destroy=>true  ,:reject_if => :all_blank
#   def is_alumni?
#     alumni
#   end
#  end
#end
