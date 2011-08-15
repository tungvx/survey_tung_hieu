require 'test_helper'

class QuestionTungsControllerTest < ActionController::TestCase
  setup do
    @question_tung = question_tungs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:question_tungs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create question_tung" do
    assert_difference('QuestionTung.count') do
      post :create, :question_tung => @question_tung.attributes
    end

    assert_redirected_to question_tung_path(assigns(:question_tung))
  end

  test "should show question_tung" do
    get :show, :id => @question_tung.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @question_tung.to_param
    assert_response :success
  end

  test "should update question_tung" do
    put :update, :id => @question_tung.to_param, :question_tung => @question_tung.attributes
    assert_redirected_to question_tung_path(assigns(:question_tung))
  end

  test "should destroy question_tung" do
    assert_difference('QuestionTung.count', -1) do
      delete :destroy, :id => @question_tung.to_param
    end

    assert_redirected_to question_tungs_path
  end
end
