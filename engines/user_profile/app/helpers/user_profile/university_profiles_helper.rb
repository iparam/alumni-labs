module UserProfile
  module UniversityProfilesHelper
 def set_display_class(user)
    user.is_alumni? ? "" : "none"
  end
  def set_year_class(user)
    user.is_alumni? ? "none" : ""
  end
   def options_for_education_year
      (1970...2012).to_a.collect {|x| x}
    end
  end
  
 
end
