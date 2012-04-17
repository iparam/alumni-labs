class HomeController < ApplicationController
  skip_before_filter :authenticate_user!
 # layout "home"
  def index
  if current_user
    render :layout=> "application" 
  else
    render :layout=> "home" 
  end   
  end
end
