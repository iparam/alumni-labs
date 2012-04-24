module UserProfile
  class Experience < ActiveRecord::Base
    attr_accessible :company_name, :description, :end_date, :is_current, :location, :start_date, :title, :user_id
   belongs_to :user
   validates_presence_of :company_name
   before_save :call_me     
   def call_me
     puts "ss"
     #binding.pry
     puts "ss"
   end     
  end
end
