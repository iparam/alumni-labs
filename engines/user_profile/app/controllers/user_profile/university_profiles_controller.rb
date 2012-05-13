module UserProfile
  class UniversityProfilesController < ApplicationController
    # GET /university_profiles
    # GET /university_profiles.json
    def index
      @page = params[:page] || 1
      require 'pry'
      binding.pry
      @university_profiles = UniversityProfile.page(@page)
  
      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @university_profiles }
      end
    end
  
    # GET /university_profiles/1
    # GET /university_profiles/1.json
    def show
      @university_profile = UniversityProfile.find(params[:id])
  
      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @university_profile }
      end
    end
  
    # GET /university_profiles/new
    # GET /university_profiles/new.json
    def new
      @university_profile = UniversityProfile.new
      @university_profile.university_courses || @user.build_university_courses
      respond_to do |format|
        format.html # new.html.erb
        format.json { render json: @university_profile }
      end
    end
  
    # GET /university_profiles/1/edit
    def edit
      @university_profile = UniversityProfile.find(params[:id])
      @university_profile.university_courses || @user.build_university_courses
    end
  
    # POST /university_profiles
    # POST /university_profiles.json
    def create
      @university_profile = UniversityProfile.new(params[:university_profile])
  
      respond_to do |format|
        if @university_profile.save
          format.html { redirect_to @university_profile, notice: 'University profile was successfully created.' }
          format.json { render json: @university_profile, status: :created, location: @university_profile }
        else
          format.html { render action: "new" }
          format.json { render json: @university_profile.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # PUT /university_profiles/1
    # PUT /university_profiles/1.json
    def update
      @university_profile = UniversityProfile.find(params[:id])
  
      respond_to do |format|
        if @university_profile.update_attributes(params[:university_profile])
          format.html { redirect_to @university_profile, notice: 'University profile was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: "edit" }
          format.json { render json: @university_profile.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /university_profiles/1
    # DELETE /university_profiles/1.json
    def destroy
      @university_profile = UniversityProfile.find(params[:id])
      @university_profile.destroy
  
      respond_to do |format|
        format.html { redirect_to university_profiles_url }
        format.json { head :no_content }
      end
    end
  end
end
