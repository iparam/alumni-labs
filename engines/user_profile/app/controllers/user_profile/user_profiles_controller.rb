module UserProfile
  class UserProfilesController < ApplicationController
    def index
      
    end
    def show
#      begin
       @user = UserProfile.user_class.find(params[:id])
       @user.user_info || @user.build_user_info

#      rescue ActiveRecord::RecordNotFound
#        user = User.find(params[:id])  
#        user.update_attribute(:type,"UserProfile::Student") if user.present?
#        @user=Student.find(params[:id])  
#      end
      if !@user.present?
        flash[:notice] ="Page not found"
        redirect_to '/'
      end
      
    end
    def update_profile
      @user = UserProfile.user_class.find(current_user.id)
       # binding.pry
      if @user.update_attributes(params[:user])
        redirect_to profile_path(@user)
      else
        @universities = UniversityProfile.all
        @user.user_info || @user.build_user_info
        @user.objective || @user.build_objective
        
        render :action=>"edit_profile"  
      end
    end
    def edit_profile
      @user = UserProfile.user_class.find(current_user.id)
      @universities = UniversityProfile.all
      @expo = @user.expos || @user.expos.new
   #   binding.pry
      @user.user_info || @user.build_user_info
      @user.objective || @user.build_objective

    end
  end
end  
