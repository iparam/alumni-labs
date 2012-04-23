require 'test_helper'

module UserProfile
  class UniversityProfilesControllerTest < ActionController::TestCase
    setup do
      @university_profile = university_profiles(:one)
    end
  
    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:university_profiles)
    end
  
    test "should get new" do
      get :new
      assert_response :success
    end
  
    test "should create university_profile" do
      assert_difference('UniversityProfile.count') do
        post :create, university_profile: { address: @university_profile.address, name: @university_profile.name, summary: @university_profile.summary }
      end
  
      assert_redirected_to university_profile_path(assigns(:university_profile))
    end
  
    test "should show university_profile" do
      get :show, id: @university_profile
      assert_response :success
    end
  
    test "should get edit" do
      get :edit, id: @university_profile
      assert_response :success
    end
  
    test "should update university_profile" do
      put :update, id: @university_profile, university_profile: { address: @university_profile.address, name: @university_profile.name, summary: @university_profile.summary }
      assert_redirected_to university_profile_path(assigns(:university_profile))
    end
  
    test "should destroy university_profile" do
      assert_difference('UniversityProfile.count', -1) do
        delete :destroy, id: @university_profile
      end
  
      assert_redirected_to university_profiles_path
    end
  end
end
