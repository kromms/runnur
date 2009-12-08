require 'test_helper'

class DailyValuesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:daily_values)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daily_values" do
    assert_difference('DailyValues.count') do
      post :create, :daily_values => { }
    end

    assert_redirected_to daily_values_path(assigns(:daily_values))
  end

  test "should show daily_values" do
    get :show, :id => daily_values(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => daily_values(:one).to_param
    assert_response :success
  end

  test "should update daily_values" do
    put :update, :id => daily_values(:one).to_param, :daily_values => { }
    assert_redirected_to daily_values_path(assigns(:daily_values))
  end

  test "should destroy daily_values" do
    assert_difference('DailyValues.count', -1) do
      delete :destroy, :id => daily_values(:one).to_param
    end

    assert_redirected_to daily_values_path
  end
end
