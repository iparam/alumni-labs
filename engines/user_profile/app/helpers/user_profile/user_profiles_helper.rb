module UserProfile
  module UserProfilesHelper
   
  def profile_error_messages(user)
    errors = ""
    if user.errors.present?
        user.errors.full_messages.each do |msg|    
          errors << "<li>#{msg}</li>"
        end
#      user.errors.messages.keys.each do |model_key|
#        user.send(model_key)
#      end

    end
    errors.html_safe
  end
  def options_for_education_year
      (1970...2012).to_a.collect {|x| x}
   
  end
  
  
  end  
end
