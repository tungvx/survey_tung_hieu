require 'test_helper'

class SurveyTungsControllerTest < ActionController::TestCase
  setup do
    @survey_tung = survey_tungs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:survey_tungs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create survey_tung" do
    assert_difference('SurveyTung.count') do
      post :create, :survey_tung => @survey_tung.attributes
    end

    assert_redirected_to survey_tung_path(assigns(:survey_tung))
  end

  test "should show survey_tung" do
    get :show, :id => @survey_tung.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @survey_tung.to_param
    assert_response :success
  end

  test "should update survey_tung" do
    put :update, :id => @survey_tung.to_param, :survey_tung => @survey_tung.attributes
    assert_redirected_to survey_tung_path(assigns(:survey_tung))
  end

  test "should destroy survey_tung" do
    assert_difference('SurveyTung.count', -1) do
      delete :destroy, :id => @survey_tung.to_param
    end

    assert_redirected_to survey_tungs_path
  end
end
