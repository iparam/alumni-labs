module UserProfile
  class UserProfilesController < ApplicationController
    def index
      
    end
    def show
#      begin
       @user = UserProfile::User.find(params[:id])
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
      @user = UserProfile::User.find(current_user.id)
        if @user.update_attributes(params[:user])
      redirect_to profile_path(@user)
    else
      render :action=>"edit_profile"  
    end
    end
    def edit_profile
      @user = UserProfile::User.find(current_user.id)
      @universities =UniversityProfile.all
      @user.user_info || @user.build_user_info
      @user.objective || @user.build_objective
    end
  end
end  
