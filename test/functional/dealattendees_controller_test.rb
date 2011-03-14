require 'test_helper'

class DealattendeesControllerTest < ActionController::TestCase
  setup do
    @dealattendee = dealattendees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dealattendees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dealattendee" do
    assert_difference('Dealattendee.count') do
      post :create, :dealattendee => @dealattendee.attributes
    end

    assert_redirected_to dealattendee_path(assigns(:dealattendee))
  end

  test "should show dealattendee" do
    get :show, :id => @dealattendee.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @dealattendee.to_param
    assert_response :success
  end

  test "should update dealattendee" do
    put :update, :id => @dealattendee.to_param, :dealattendee => @dealattendee.attributes
    assert_redirected_to dealattendee_path(assigns(:dealattendee))
  end

  test "should destroy dealattendee" do
    assert_difference('Dealattendee.count', -1) do
      delete :destroy, :id => @dealattendee.to_param
    end

    assert_redirected_to dealattendees_path
  end
end
