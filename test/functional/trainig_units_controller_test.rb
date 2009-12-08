require 'test_helper'

class TrainigUnitsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trainig_units)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trainig_unit" do
    assert_difference('TrainigUnit.count') do
      post :create, :trainig_unit => { }
    end

    assert_redirected_to trainig_unit_path(assigns(:trainig_unit))
  end

  test "should show trainig_unit" do
    get :show, :id => trainig_units(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => trainig_units(:one).to_param
    assert_response :success
  end

  test "should update trainig_unit" do
    put :update, :id => trainig_units(:one).to_param, :trainig_unit => { }
    assert_redirected_to trainig_unit_path(assigns(:trainig_unit))
  end

  test "should destroy trainig_unit" do
    assert_difference('TrainigUnit.count', -1) do
      delete :destroy, :id => trainig_units(:one).to_param
    end

    assert_redirected_to trainig_units_path
  end
end
